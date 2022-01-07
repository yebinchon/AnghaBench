
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name_buf ;
typedef int desc ;
typedef int FILE ;


 int BIC_sysfs ;
 int DO_BIC (int ) ;
 int base_cpu ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,int,char*,char*) ;
 int outf ;
 int sprintf (char*,char*,int,int) ;
 char* strchr (char*,char) ;
 char* strchrnul (char*,char) ;

__attribute__((used)) static void
dump_sysfs_cstate_config(void)
{
 char path[64];
 char name_buf[16];
 char desc[64];
 FILE *input;
 int state;
 char *sp;

 if (!DO_BIC(BIC_sysfs))
  return;

 for (state = 0; state < 10; ++state) {

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

  sprintf(path, "/sys/devices/system/cpu/cpu%d/cpuidle/state%d/desc",
   base_cpu, state);
  input = fopen(path, "r");
  if (input == ((void*)0))
   continue;
  if (!fgets(desc, sizeof(desc), input))
   err(1, "%s: failed to read file", path);

  fprintf(outf, "cpu%d: %s: %s", base_cpu, name_buf, desc);
  fclose(input);
 }
}
