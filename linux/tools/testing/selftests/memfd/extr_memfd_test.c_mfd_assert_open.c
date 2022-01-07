
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int abort () ;
 int open (char*,int,int ) ;
 int printf (char*,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int mfd_assert_open(int fd, int flags, mode_t mode)
{
 char buf[512];
 int r;

 sprintf(buf, "/proc/self/fd/%d", fd);
 r = open(buf, flags, mode);
 if (r < 0) {
  printf("open(%s) failed: %m\n", buf);
  abort();
 }

 return r;
}
