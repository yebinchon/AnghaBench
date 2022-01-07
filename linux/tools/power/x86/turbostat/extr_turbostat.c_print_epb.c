
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int cpu_id; int flags; } ;
struct pkg_data {int dummy; } ;
struct core_data {int dummy; } ;


 int CPU_IS_FIRST_CORE_IN_PACKAGE ;
 int CPU_IS_FIRST_THREAD_IN_CORE ;



 int MSR_IA32_ENERGY_PERF_BIAS ;
 scalar_t__ cpu_migrate (int) ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__ get_msr (int,int ,unsigned long long*) ;
 int has_epb ;
 int outf ;

int print_epb(struct thread_data *t, struct core_data *c, struct pkg_data *p)
{
 unsigned long long msr;
 char *epb_string;
 int cpu;

 if (!has_epb)
  return 0;

 cpu = t->cpu_id;


 if (!(t->flags & CPU_IS_FIRST_THREAD_IN_CORE) || !(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
  return 0;

 if (cpu_migrate(cpu)) {
  fprintf(outf, "Could not migrate to CPU %d\n", cpu);
  return -1;
 }

 if (get_msr(cpu, MSR_IA32_ENERGY_PERF_BIAS, &msr))
  return 0;

 switch (msr & 0xF) {
 case 129:
  epb_string = "performance";
  break;
 case 130:
  epb_string = "balanced";
  break;
 case 128:
  epb_string = "powersave";
  break;
 default:
  epb_string = "custom";
  break;
 }
 fprintf(outf, "cpu%d: MSR_IA32_ENERGY_PERF_BIAS: 0x%08llx (%s)\n", cpu, msr, epb_string);

 return 0;
}
