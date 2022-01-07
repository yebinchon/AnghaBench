
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void perf_callchain_entry ;
struct callchain_cpus_entries {scalar_t__* cpu_entries; } ;


 int callchain_cpus_entries ;
 int callchain_recursion ;
 int get_recursion_context (int ) ;
 int perf_callchain_entry__sizeof () ;
 struct callchain_cpus_entries* rcu_dereference (int ) ;
 int smp_processor_id () ;
 int this_cpu_ptr (int ) ;

__attribute__((used)) static struct perf_callchain_entry *get_callchain_entry(int *rctx)
{
 int cpu;
 struct callchain_cpus_entries *entries;

 *rctx = get_recursion_context(this_cpu_ptr(callchain_recursion));
 if (*rctx == -1)
  return ((void*)0);

 entries = rcu_dereference(callchain_cpus_entries);
 if (!entries)
  return ((void*)0);

 cpu = smp_processor_id();

 return (((void *)entries->cpu_entries[cpu]) +
  (*rctx * perf_callchain_entry__sizeof()));
}
