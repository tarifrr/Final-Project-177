image=imread('football.jpg'); % reading an image
subplot(2,4,1)
imshow(image) % showing the image
image_gray=rgb2gray(image);   % converting the image to a gray scale image
distorted_image=imnoise(image_gray,'salt & pepper'); % adding noise to the gray scale image
restored_image=medfilt2(distorted_image); % filtering the distorted image
subplot(2,4,2), imshow(image_gray) % showing the gray scale image
subplot(2,4,3), imshow(distorted_image) % showing the distorted image
subplot(2,4,4), imshow(restored_image) % showing the restored image
image_hist=histeq(image_gray); % showing the result of histogram equalization
subplot(2,4,5),imshow(image_gray)% showing the gray scale image
subplot(2,4,6),imshow(image_hist) % showing the histogram equalized image
image_edge=edge(image_gray,'canny');
subplot(2,4,7),imshow(image_gray) % showing the gray scale image
subplot(2,4,8),imshow(image_edge)% showing the gray scale image with edges detected
