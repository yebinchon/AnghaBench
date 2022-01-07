
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CPU_ALLOC (int) ;
 scalar_t__ CPU_ISSET_S (int,int ,int ) ;
 int CPU_SET_S (int,int ,int *) ;
 int CPU_ZERO_S (int ,int *) ;
 int cpu_present_set ;
 int * cpu_selected_set ;
 int cpu_setsize ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int max_cpu_num ;
 scalar_t__ pkg_selected_set ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,char**,int) ;
 int usage () ;
 int validate_cpu_selected_set () ;

void parse_cmdline_cpu(char *s)
{
 char *startp, *endp;
 int cpu = 0;

 if (pkg_selected_set) {
  usage();
  errx(1, "--cpu | --pkg");
 }
 cpu_selected_set = CPU_ALLOC((max_cpu_num + 1));
 if (cpu_selected_set == ((void*)0))
  err(1, "cpu_selected_set");
 CPU_ZERO_S(cpu_setsize, cpu_selected_set);

 for (startp = s; startp && *startp;) {

  if (*startp == ',') {
   startp++;
   continue;
  }

  if (*startp == '-') {
   int end_cpu;

   startp++;
   end_cpu = strtol(startp, &endp, 10);
   if (startp == endp)
    continue;

   while (cpu <= end_cpu) {
    if (cpu > max_cpu_num)
     errx(1, "Requested cpu%d exceeds max cpu%d", cpu, max_cpu_num);
    CPU_SET_S(cpu, cpu_setsize, cpu_selected_set);
    cpu++;
   }
   startp = endp;
   continue;
  }

  if (strncmp(startp, "all", 3) == 0) {
   for (cpu = 0; cpu <= max_cpu_num; cpu += 1) {
    if (CPU_ISSET_S(cpu, cpu_setsize, cpu_present_set))
     CPU_SET_S(cpu, cpu_setsize, cpu_selected_set);
   }
   startp += 3;
   if (*startp == 0)
    break;
  }

  if (strncmp(startp, "even", 4) == 0) {
   for (cpu = 0; cpu <= max_cpu_num; cpu += 2) {
    if (CPU_ISSET_S(cpu, cpu_setsize, cpu_present_set))
     CPU_SET_S(cpu, cpu_setsize, cpu_selected_set);
   }
   startp += 4;
   if (*startp == 0)
    break;
  }


  if (strncmp(startp, "odd", 3) == 0) {
   for (cpu = 1; cpu <= max_cpu_num; cpu += 2) {
    if (CPU_ISSET_S(cpu, cpu_setsize, cpu_present_set))
     CPU_SET_S(cpu, cpu_setsize, cpu_selected_set);
   }
   startp += 3;
   if (*startp == 0)
    break;
  }

  cpu = strtol(startp, &endp, 10);
  if (startp == endp)
   errx(1, "--cpu cpu-set: confused by '%s'", startp);
  if (cpu > max_cpu_num)
   errx(1, "Requested cpu%d exceeds max cpu%d", cpu, max_cpu_num);
  CPU_SET_S(cpu, cpu_setsize, cpu_selected_set);
  startp = endp;
 }

 validate_cpu_selected_set();

}
