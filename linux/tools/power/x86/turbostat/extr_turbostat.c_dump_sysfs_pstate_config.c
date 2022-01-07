
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int governor_buf ;
typedef int driver_buf ;
typedef int FILE ;


 int base_cpu ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fscanf (int *,char*,int*) ;
 int outf ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void
dump_sysfs_pstate_config(void)
{
 char path[64];
 char driver_buf[64];
 char governor_buf[64];
 FILE *input;
 int turbo;

 sprintf(path, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_driver",
   base_cpu);
 input = fopen(path, "r");
 if (input == ((void*)0)) {
  fprintf(outf, "NSFOD %s\n", path);
  return;
 }
 if (!fgets(driver_buf, sizeof(driver_buf), input))
  err(1, "%s: failed to read file", path);
 fclose(input);

 sprintf(path, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor",
   base_cpu);
 input = fopen(path, "r");
 if (input == ((void*)0)) {
  fprintf(outf, "NSFOD %s\n", path);
  return;
 }
 if (!fgets(governor_buf, sizeof(governor_buf), input))
  err(1, "%s: failed to read file", path);
 fclose(input);

 fprintf(outf, "cpu%d: cpufreq driver: %s", base_cpu, driver_buf);
 fprintf(outf, "cpu%d: cpufreq governor: %s", base_cpu, governor_buf);

 sprintf(path, "/sys/devices/system/cpu/cpufreq/boost");
 input = fopen(path, "r");
 if (input != ((void*)0)) {
  if (fscanf(input, "%d", &turbo) != 1)
   err(1, "%s: failed to parse number from file", path);
  fprintf(outf, "cpufreq boost: %d\n", turbo);
  fclose(input);
 }

 sprintf(path, "/sys/devices/system/cpu/intel_pstate/no_turbo");
 input = fopen(path, "r");
 if (input != ((void*)0)) {
  if (fscanf(input, "%d", &turbo) != 1)
   err(1, "%s: failed to parse number from file", path);
  fprintf(outf, "cpufreq intel_pstate no_turbo: %d\n", turbo);
  fclose(input);
 }
}
