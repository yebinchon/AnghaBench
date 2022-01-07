
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readlink (char*,char*,size_t) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int resolve_procfd_symlink(int fd, char *buf, size_t buflen)
{
 int ret;
 char procfd[4096];

 ret = snprintf(procfd, 4096, "/proc/self/fd/%d", fd);
 if (ret < 0 || ret >= 4096)
  return -1;

 ret = readlink(procfd, buf, buflen);
 if (ret < 0 || (size_t)ret >= buflen)
  return -1;

 buf[ret] = '\0';

 return 0;
}
