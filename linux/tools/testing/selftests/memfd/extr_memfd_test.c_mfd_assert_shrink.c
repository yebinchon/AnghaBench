
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int S_IRUSR ;
 int S_IWUSR ;
 int abort () ;
 int close (int) ;
 int ftruncate (int,int) ;
 int mfd_assert_open (int,int,int) ;
 int mfd_assert_size (int,int) ;
 int mfd_def_size ;
 int printf (char*) ;

__attribute__((used)) static void mfd_assert_shrink(int fd)
{
 int r, fd2;

 r = ftruncate(fd, mfd_def_size / 2);
 if (r < 0) {
  printf("ftruncate(SHRINK) failed: %m\n");
  abort();
 }

 mfd_assert_size(fd, mfd_def_size / 2);

 fd2 = mfd_assert_open(fd,
         O_RDWR | O_CREAT | O_TRUNC,
         S_IRUSR | S_IWUSR);
 close(fd2);

 mfd_assert_size(fd, 0);
}
