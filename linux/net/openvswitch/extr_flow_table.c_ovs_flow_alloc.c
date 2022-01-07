
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_stats {int lock; } ;
struct sw_flow {int stats_last_writer; int cpu_used_mask; int * stats; } ;


 int ENOMEM ;
 struct sw_flow* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 int RCU_INIT_POINTER (int ,struct sw_flow_stats*) ;
 int __GFP_ZERO ;
 int cpumask_set_cpu (int ,int *) ;
 int flow_cache ;
 int flow_stats_cache ;
 struct sw_flow_stats* kmem_cache_alloc_node (int ,int,int ) ;
 int kmem_cache_free (int ,struct sw_flow*) ;
 struct sw_flow* kmem_cache_zalloc (int ,int) ;
 scalar_t__ node_online (int ) ;
 int spin_lock_init (int *) ;

struct sw_flow *ovs_flow_alloc(void)
{
 struct sw_flow *flow;
 struct sw_flow_stats *stats;

 flow = kmem_cache_zalloc(flow_cache, GFP_KERNEL);
 if (!flow)
  return ERR_PTR(-ENOMEM);

 flow->stats_last_writer = -1;


 stats = kmem_cache_alloc_node(flow_stats_cache,
          GFP_KERNEL | __GFP_ZERO,
          node_online(0) ? 0 : NUMA_NO_NODE);
 if (!stats)
  goto err;

 spin_lock_init(&stats->lock);

 RCU_INIT_POINTER(flow->stats[0], stats);

 cpumask_set_cpu(0, &flow->cpu_used_mask);

 return flow;
err:
 kmem_cache_free(flow_cache, flow);
 return ERR_PTR(-ENOMEM);
}
