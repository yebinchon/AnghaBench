
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_stats {int lock; scalar_t__ tcp_flags; scalar_t__ byte_count; scalar_t__ packet_count; scalar_t__ used; } ;
struct sw_flow {int * stats; int cpu_used_mask; } ;


 int cpumask_next (int,int *) ;
 int nr_cpu_ids ;
 struct sw_flow_stats* ovsl_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ovs_flow_stats_clear(struct sw_flow *flow)
{
 int cpu;


 for (cpu = 0; cpu < nr_cpu_ids; cpu = cpumask_next(cpu, &flow->cpu_used_mask)) {
  struct sw_flow_stats *stats = ovsl_dereference(flow->stats[cpu]);

  if (stats) {
   spin_lock_bh(&stats->lock);
   stats->used = 0;
   stats->packet_count = 0;
   stats->byte_count = 0;
   stats->tcp_flags = 0;
   spin_unlock_bh(&stats->lock);
  }
 }
}
