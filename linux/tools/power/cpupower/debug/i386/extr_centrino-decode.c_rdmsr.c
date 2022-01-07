
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int MCPU ;
 int O_RDONLY ;
 int SEEK_CUR ;
 int close (int) ;
 int lseek (int,unsigned int,int ) ;
 int open (char*,int ) ;
 int read (int,unsigned long long*,int) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int rdmsr(unsigned int cpu, unsigned int msr,
   unsigned int *lo, unsigned int *hi)
{
 int fd;
 char file[20];
 unsigned long long val;
 int retval = -1;

 *lo = *hi = 0;

 if (cpu > MCPU)
  goto err1;

 sprintf(file, "/dev/cpu/%d/msr", cpu);
 fd = open(file, O_RDONLY);

 if (fd < 0)
  goto err1;

 if (lseek(fd, msr, SEEK_CUR) == -1)
  goto err2;

 if (read(fd, &val, 8) != 8)
  goto err2;

 *lo = (uint32_t )(val & 0xffffffffull);
 *hi = (uint32_t )(val>>32 & 0xffffffffull);

 retval = 0;
err2:
 close(fd);
err1:
 return retval;
}
