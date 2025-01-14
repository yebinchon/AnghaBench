
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fallocate (int,int ,int ,int) ;
 int ftruncate (int,int) ;
 int mfd_assert_size (int,int) ;
 int mfd_def_size ;
 int printf (char*) ;

__attribute__((used)) static void mfd_assert_grow(int fd)
{
 int r;

 r = ftruncate(fd, mfd_def_size * 2);
 if (r < 0) {
  printf("ftruncate(GROW) failed: %m\n");
  abort();
 }

 mfd_assert_size(fd, mfd_def_size * 2);

 r = fallocate(fd,
        0,
        0,
        mfd_def_size * 4);
 if (r < 0) {
  printf("fallocate(ALLOC) failed: %m\n");
  abort();
 }

 mfd_assert_size(fd, mfd_def_size * 4);
}
