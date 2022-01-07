
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int dup (int) ;
 int printf (char*,int) ;

__attribute__((used)) static int mfd_assert_dup(int fd)
{
 int r;

 r = dup(fd);
 if (r < 0) {
  printf("dup(%d) failed: %m\n", fd);
  abort();
 }

 return r;
}
