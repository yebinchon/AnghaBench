
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * elp_skb; int elp_wq; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_kfree_skb (int *) ;

void batadv_v_elp_iface_disable(struct batadv_hard_iface *hard_iface)
{
 cancel_delayed_work_sync(&hard_iface->bat_v.elp_wq);

 dev_kfree_skb(hard_iface->bat_v.elp_skb);
 hard_iface->bat_v.elp_skb = ((void*)0);
}
