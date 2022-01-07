
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int barrier_cpu_count; int name; } ;


 int atomic_read (int *) ;
 TYPE_1__ rcu_state ;
 int trace_rcu_barrier (int ,char const*,int,int ,unsigned long) ;

__attribute__((used)) static void rcu_barrier_trace(const char *s, int cpu, unsigned long done)
{
 trace_rcu_barrier(rcu_state.name, s, cpu,
     atomic_read(&rcu_state.barrier_cpu_count), done);
}
