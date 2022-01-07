
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aggr_wq; int aggr_list_lock; int aggr_list; scalar_t__ aggr_len; int elp_interval; int throughput_override; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_set (int *,int) ;
 int batadv_v_ogm_aggr_work ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

void batadv_v_hardif_init(struct batadv_hard_iface *hard_iface)
{



 atomic_set(&hard_iface->bat_v.throughput_override, 0);
 atomic_set(&hard_iface->bat_v.elp_interval, 500);

 hard_iface->bat_v.aggr_len = 0;
 skb_queue_head_init(&hard_iface->bat_v.aggr_list);
 spin_lock_init(&hard_iface->bat_v.aggr_list_lock);
 INIT_DELAYED_WORK(&hard_iface->bat_v.aggr_wq,
     batadv_v_ogm_aggr_work);
}
