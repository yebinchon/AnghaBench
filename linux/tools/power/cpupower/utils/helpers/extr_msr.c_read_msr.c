
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int SEEK_CUR ;
 int close (int) ;
 int lseek (int,unsigned int,int ) ;
 int open (char*,int ) ;
 int read (int,unsigned long long*,int) ;
 int sprintf (char*,char*,int) ;

int read_msr(int cpu, unsigned int idx, unsigned long long *val)
{
 int fd;
 char msr_file_name[64];

 sprintf(msr_file_name, "/dev/cpu/%d/msr", cpu);
 fd = open(msr_file_name, O_RDONLY);
 if (fd < 0)
  return -1;
 if (lseek(fd, idx, SEEK_CUR) == -1)
  goto err;
 if (read(fd, val, sizeof *val) != sizeof *val)
  goto err;
 close(fd);
 return 0;
 err:
 close(fd);
 return -1;
}
