
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int abort () ;
 int open (char*,int ) ;
 int printf (char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int mfd_assert_reopen_fd(int fd_in)
{
 int r, fd;
 char path[100];

 sprintf(path, "/proc/self/fd/%d", fd_in);

 fd = open(path, O_RDWR);
 if (fd < 0) {
  printf("re-open of existing fd %d failed\n", fd_in);
  abort();
 }

 return fd;
}
