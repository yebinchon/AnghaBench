
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errx (int,char*,char*) ;
 int * fopen_or_die (char*,char*) ;
 int fscanf (int *,char*,unsigned int*) ;
 int sprintf (char*,char*,int) ;

unsigned int get_pkg_num(int cpu)
{
 FILE *fp;
 char pathname[128];
 unsigned int pkg;
 int retval;

 sprintf(pathname, "/sys/devices/system/cpu/cpu%d/topology/physical_package_id", cpu);

 fp = fopen_or_die(pathname, "r");
 retval = fscanf(fp, "%d\n", &pkg);
 if (retval != 1)
  errx(1, "%s: failed to parse", pathname);
 return pkg;
}
