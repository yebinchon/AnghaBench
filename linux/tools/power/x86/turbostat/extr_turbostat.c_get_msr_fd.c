
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int err (int,char*,char*) ;
 int* fd_percpu ;
 int open (char*,int ) ;
 int sprintf (char*,char*,int) ;

int get_msr_fd(int cpu)
{
 char pathname[32];
 int fd;

 fd = fd_percpu[cpu];

 if (fd)
  return fd;

 sprintf(pathname, "/dev/cpu/%d/msr", cpu);
 fd = open(pathname, O_RDONLY);
 if (fd < 0)
  err(-1, "%s open failed, try chown or chmod +r /dev/cpu/*/msr, or run as root", pathname);

 fd_percpu[cpu] = fd;

 return fd;
}
