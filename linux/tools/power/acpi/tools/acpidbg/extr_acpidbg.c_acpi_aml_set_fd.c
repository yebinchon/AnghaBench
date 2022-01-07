
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int,int *) ;

__attribute__((used)) static int acpi_aml_set_fd(int fd, int maxfd, fd_set *set)
{
 if (fd > maxfd)
  maxfd = fd;
 FD_SET(fd, set);
 return maxfd;
}
