
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int syncp; } ;
struct per_cpu_dm_data {TYPE_1__ stats; int drop_queue; int lock; } ;


 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static void __net_dm_cpu_data_init(struct per_cpu_dm_data *data)
{
 spin_lock_init(&data->lock);
 skb_queue_head_init(&data->drop_queue);
 u64_stats_init(&data->stats.syncp);
}
