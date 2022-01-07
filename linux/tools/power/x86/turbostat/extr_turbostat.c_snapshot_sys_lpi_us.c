
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BIC_NOT_PRESENT (int ) ;
 int BIC_SYS_LPI ;
 int cpuidle_cur_sys_lpi_us ;
 int fclose (int *) ;
 int * fopen_or_die (char*,char*) ;
 int fprintf (int ,char*) ;
 int fscanf (int *,char*,int *) ;
 int stderr ;

int snapshot_sys_lpi_us(void)
{
 FILE *fp;
 int retval;

 fp = fopen_or_die("/sys/devices/system/cpu/cpuidle/low_power_idle_system_residency_us", "r");

 retval = fscanf(fp, "%lld", &cpuidle_cur_sys_lpi_us);
 if (retval != 1) {
  fprintf(stderr, "Disabling Low Power Idle System output\n");
  BIC_NOT_PRESENT(BIC_SYS_LPI);
  fclose(fp);
  return -1;
 }
 fclose(fp);

 return 0;
}
