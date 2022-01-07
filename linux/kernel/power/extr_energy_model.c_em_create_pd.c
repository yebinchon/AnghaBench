
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct em_perf_domain {unsigned long power; unsigned long frequency; int nr_cap_states; int cpus; struct em_perf_domain* table; int cost; } ;
struct em_data_callback {int (* active_power ) (unsigned long*,unsigned long*,int) ;} ;
struct em_cap_state {unsigned long power; unsigned long frequency; int nr_cap_states; int cpus; struct em_cap_state* table; int cost; } ;
typedef int cpumask_t ;


 unsigned long EM_CPU_MAX_POWER ;
 int GFP_KERNEL ;
 unsigned long ULONG_MAX ;
 int cpumask_copy (int ,int *) ;
 int cpumask_first (int *) ;
 scalar_t__ cpumask_size () ;
 int div64_u64 (int,unsigned long) ;
 int em_debug_create_pd (struct em_perf_domain*,int) ;
 struct em_perf_domain* kcalloc (int,int,int ) ;
 int kfree (struct em_perf_domain*) ;
 struct em_perf_domain* kzalloc (scalar_t__,int ) ;
 int pr_err (char*,int,unsigned long) ;
 int pr_warn (char*,int,int,int) ;
 int stub1 (unsigned long*,unsigned long*,int) ;
 int to_cpumask (int ) ;

__attribute__((used)) static struct em_perf_domain *em_create_pd(cpumask_t *span, int nr_states,
      struct em_data_callback *cb)
{
 unsigned long opp_eff, prev_opp_eff = ULONG_MAX;
 unsigned long power, freq, prev_freq = 0;
 int i, ret, cpu = cpumask_first(span);
 struct em_cap_state *table;
 struct em_perf_domain *pd;
 u64 fmax;

 if (!cb->active_power)
  return ((void*)0);

 pd = kzalloc(sizeof(*pd) + cpumask_size(), GFP_KERNEL);
 if (!pd)
  return ((void*)0);

 table = kcalloc(nr_states, sizeof(*table), GFP_KERNEL);
 if (!table)
  goto free_pd;


 for (i = 0, freq = 0; i < nr_states; i++, freq++) {





  ret = cb->active_power(&power, &freq, cpu);
  if (ret) {
   pr_err("pd%d: invalid cap. state: %d\n", cpu, ret);
   goto free_cs_table;
  }





  if (freq <= prev_freq) {
   pr_err("pd%d: non-increasing freq: %lu\n", cpu, freq);
   goto free_cs_table;
  }





  if (!power || power > EM_CPU_MAX_POWER) {
   pr_err("pd%d: invalid power: %lu\n", cpu, power);
   goto free_cs_table;
  }

  table[i].power = power;
  table[i].frequency = prev_freq = freq;







  opp_eff = freq / power;
  if (opp_eff >= prev_opp_eff)
   pr_warn("pd%d: hertz/watts ratio non-monotonically decreasing: em_cap_state %d >= em_cap_state%d\n",
     cpu, i, i - 1);
  prev_opp_eff = opp_eff;
 }


 fmax = (u64) table[nr_states - 1].frequency;
 for (i = 0; i < nr_states; i++) {
  table[i].cost = div64_u64(fmax * table[i].power,
       table[i].frequency);
 }

 pd->table = table;
 pd->nr_cap_states = nr_states;
 cpumask_copy(to_cpumask(pd->cpus), span);

 em_debug_create_pd(pd, cpu);

 return pd;

free_cs_table:
 kfree(table);
free_pd:
 kfree(pd);

 return ((void*)0);
}
