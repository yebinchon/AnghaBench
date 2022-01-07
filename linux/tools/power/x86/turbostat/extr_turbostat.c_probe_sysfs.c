
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name_buf ;
typedef int FILE ;


 int BIC_sysfs ;
 int COUNTER_ITEMS ;
 int COUNTER_USEC ;
 int DO_BIC (int ) ;
 int FORMAT_DELTA ;
 int FORMAT_PERCENT ;
 int SCOPE_CPU ;
 int SYSFS_PERCPU ;
 int add_counter (int ,char*,char*,int,int ,int ,int ,int ) ;
 int base_cpu ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ is_deferred_skip (char*) ;
 int sprintf (char*,char*,int,...) ;
 char* strchr (char*,char) ;
 char* strchrnul (char*,char) ;

void probe_sysfs(void)
{
 char path[64];
 char name_buf[16];
 FILE *input;
 int state;
 char *sp;

 if (!DO_BIC(BIC_sysfs))
  return;

 for (state = 10; state >= 0; --state) {

  sprintf(path, "/sys/devices/system/cpu/cpu%d/cpuidle/state%d/name",
   base_cpu, state);
  input = fopen(path, "r");
  if (input == ((void*)0))
   continue;
  if (!fgets(name_buf, sizeof(name_buf), input))
   err(1, "%s: failed to read file", path);


  sp = strchr(name_buf, '-');
  if (!sp)
   sp = strchrnul(name_buf, '\n');
  *sp = '%';
  *(sp + 1) = '\0';

  fclose(input);

  sprintf(path, "cpuidle/state%d/time", state);

  if (is_deferred_skip(name_buf))
   continue;

  add_counter(0, path, name_buf, 64, SCOPE_CPU, COUNTER_USEC,
    FORMAT_PERCENT, SYSFS_PERCPU);
 }

 for (state = 10; state >= 0; --state) {

  sprintf(path, "/sys/devices/system/cpu/cpu%d/cpuidle/state%d/name",
   base_cpu, state);
  input = fopen(path, "r");
  if (input == ((void*)0))
   continue;
  if (!fgets(name_buf, sizeof(name_buf), input))
   err(1, "%s: failed to read file", path);

  sp = strchr(name_buf, '-');
  if (!sp)
   sp = strchrnul(name_buf, '\n');
  *sp = '\0';
  fclose(input);

  sprintf(path, "cpuidle/state%d/usage", state);

  if (is_deferred_skip(name_buf))
   continue;

  add_counter(0, path, name_buf, 64, SCOPE_CPU, COUNTER_ITEMS,
    FORMAT_DELTA, SYSFS_PERCPU);
 }

}
