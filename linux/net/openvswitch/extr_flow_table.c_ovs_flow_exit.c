
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flow_cache ;
 int flow_stats_cache ;
 int kmem_cache_destroy (int ) ;

void ovs_flow_exit(void)
{
 kmem_cache_destroy(flow_stats_cache);
 kmem_cache_destroy(flow_cache);
}
