
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int new_msr ;


 int O_RDWR ;
 int close (int) ;
 int debug ;
 int err (int,char*,...) ;
 int fprintf (int ,char*,int,int,unsigned long long) ;
 int open (char*,int ) ;
 int pwrite (int,unsigned long long*,int,int) ;
 int sprintf (char*,char*,int) ;
 int stderr ;

int put_msr(int cpu, int offset, unsigned long long new_msr)
{
 char pathname[32];
 int retval;
 int fd;

 sprintf(pathname, "/dev/cpu/%d/msr", cpu);
 fd = open(pathname, O_RDWR);
 if (fd < 0)
  err(-1, "%s open failed, try chown or chmod +r /dev/cpu/*/msr, or run as root", pathname);

 retval = pwrite(fd, &new_msr, sizeof(new_msr), offset);
 if (retval != sizeof(new_msr))
  err(-2, "pwrite(cpu%d, offset 0x%x, 0x%llx) = %d", cpu, offset, new_msr, retval);

 close(fd);

 if (debug > 1)
  fprintf(stderr, "put_msr(cpu%d, 0x%X, 0x%llX)\n", cpu, offset, new_msr);

 return 0;
}
