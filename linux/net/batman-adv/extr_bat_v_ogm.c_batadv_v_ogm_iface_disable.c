
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aggr_list_lock; int aggr_wq; } ;
struct batadv_hard_iface {TYPE_1__ bat_v; } ;


 int batadv_v_ogm_aggr_list_free (struct batadv_hard_iface*) ;
 int cancel_delayed_work_sync (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void batadv_v_ogm_iface_disable(struct batadv_hard_iface *hard_iface)
{
 cancel_delayed_work_sync(&hard_iface->bat_v.aggr_wq);

 spin_lock_bh(&hard_iface->bat_v.aggr_list_lock);
 batadv_v_ogm_aggr_list_free(hard_iface);
 spin_unlock_bh(&hard_iface->bat_v.aggr_list_lock);
}
