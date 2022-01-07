
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {int flags; int cpu_id; } ;
struct pkg_data {int dummy; } ;
struct core_data {int dummy; } ;


 int CPU_IS_FIRST_CORE_IN_PACKAGE ;
 int CPU_IS_FIRST_THREAD_IN_CORE ;
 int MSR_IA32_TEMPERATURE_TARGET ;
 int TJMAX_DEFAULT ;
 int base_cpu ;
 scalar_t__ cpu_migrate (int) ;
 scalar_t__ do_dts ;
 int do_nhm_platform_info ;
 scalar_t__ do_ptm ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__ get_msr (int ,int ,unsigned long long*) ;
 int outf ;
 int quiet ;
 int tcc_activation_temp ;
 scalar_t__ tcc_activation_temp_override ;

int set_temperature_target(struct thread_data *t, struct core_data *c, struct pkg_data *p)
{
 unsigned long long msr;
 unsigned int target_c_local;
 int cpu;


 if (!(do_dts || do_ptm))
  return 0;


 if (!(t->flags & CPU_IS_FIRST_THREAD_IN_CORE) || !(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
  return 0;

 cpu = t->cpu_id;
 if (cpu_migrate(cpu)) {
  fprintf(outf, "Could not migrate to CPU %d\n", cpu);
  return -1;
 }

 if (tcc_activation_temp_override != 0) {
  tcc_activation_temp = tcc_activation_temp_override;
  fprintf(outf, "cpu%d: Using cmdline TCC Target (%d C)\n",
   cpu, tcc_activation_temp);
  return 0;
 }


 if (!do_nhm_platform_info)
  goto guess;

 if (get_msr(base_cpu, MSR_IA32_TEMPERATURE_TARGET, &msr))
  goto guess;

 target_c_local = (msr >> 16) & 0xFF;

 if (!quiet)
  fprintf(outf, "cpu%d: MSR_IA32_TEMPERATURE_TARGET: 0x%08llx (%d C)\n",
   cpu, msr, target_c_local);

 if (!target_c_local)
  goto guess;

 tcc_activation_temp = target_c_local;

 return 0;

guess:
 tcc_activation_temp = TJMAX_DEFAULT;
 fprintf(outf, "cpu%d: Guessing tjMax %d C, Please use -T to specify\n",
  cpu, tcc_activation_temp);

 return 0;
}
