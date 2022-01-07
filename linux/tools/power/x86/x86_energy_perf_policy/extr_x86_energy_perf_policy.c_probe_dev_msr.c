
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int base_cpu ;
 int err (int,char*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ system (char*) ;

void probe_dev_msr(void)
{
 struct stat sb;
 char pathname[32];

 sprintf(pathname, "/dev/cpu/%d/msr", base_cpu);
 if (stat(pathname, &sb))
  if (system("/sbin/modprobe msr > /dev/null 2>&1"))
   err(-5, "no /dev/cpu/0/msr, Try \"# modprobe msr\" ");
}
