
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ debug ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int) ;
 int perror (char*) ;
 int printf (char*,int,char*) ;
 int ratio_2_sysfs_khz (unsigned int) ;
 int sprintf (char*,char*,int,char*) ;

void update_cpufreq_scaling_freq(int is_max, int cpu, unsigned int ratio)
{
 char pathname[64];
 FILE *fp;
 int retval;
 int khz;

 sprintf(pathname, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_%s_freq",
  cpu, is_max ? "max" : "min");

 fp = fopen(pathname, "w");
 if (!fp) {
  if (debug)
   perror(pathname);
  return;
 }

 khz = ratio_2_sysfs_khz(ratio);
 retval = fprintf(fp, "%d", khz);
 if (retval < 0)
  if (debug)
   perror("fprintf");
 if (debug)
  printf("echo %d > %s\n", khz, pathname);

 fclose(fp);
}
