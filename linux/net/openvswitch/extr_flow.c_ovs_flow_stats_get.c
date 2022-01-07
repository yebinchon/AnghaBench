
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_stats {unsigned long used; int lock; scalar_t__ byte_count; scalar_t__ packet_count; int tcp_flags; } ;
struct sw_flow {int * stats; int cpu_used_mask; } ;
struct ovs_flow_stats {int n_bytes; int n_packets; } ;
typedef int __be16 ;


 int cpumask_next (int,int *) ;
 int memset (struct ovs_flow_stats*,int ,int) ;
 int nr_cpu_ids ;
 struct sw_flow_stats* rcu_dereference_ovsl (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

void ovs_flow_stats_get(const struct sw_flow *flow,
   struct ovs_flow_stats *ovs_stats,
   unsigned long *used, __be16 *tcp_flags)
{
 int cpu;

 *used = 0;
 *tcp_flags = 0;
 memset(ovs_stats, 0, sizeof(*ovs_stats));


 for (cpu = 0; cpu < nr_cpu_ids; cpu = cpumask_next(cpu, &flow->cpu_used_mask)) {
  struct sw_flow_stats *stats = rcu_dereference_ovsl(flow->stats[cpu]);

  if (stats) {



   spin_lock_bh(&stats->lock);
   if (!*used || time_after(stats->used, *used))
    *used = stats->used;
   *tcp_flags |= stats->tcp_flags;
   ovs_stats->n_packets += stats->packet_count;
   ovs_stats->n_bytes += stats->byte_count;
   spin_unlock_bh(&stats->lock);
  }
 }
}
