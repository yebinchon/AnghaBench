
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ogm_cnt_lock; } ;
struct batadv_orig_node {TYPE_2__ bat_iv; } ;
struct TYPE_3__ {int bcast_own_sum; } ;
struct batadv_orig_ifinfo {TYPE_1__ bat_iv; } ;
struct batadv_hard_iface {int dummy; } ;


 struct batadv_orig_ifinfo* batadv_orig_ifinfo_get (struct batadv_orig_node*,struct batadv_hard_iface*) ;
 int batadv_orig_ifinfo_put (struct batadv_orig_ifinfo*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static u8 batadv_iv_orig_ifinfo_sum(struct batadv_orig_node *orig_node,
        struct batadv_hard_iface *if_outgoing)
{
 struct batadv_orig_ifinfo *orig_ifinfo;
 u8 sum;

 orig_ifinfo = batadv_orig_ifinfo_get(orig_node, if_outgoing);
 if (!orig_ifinfo)
  return 0;

 spin_lock_bh(&orig_node->bat_iv.ogm_cnt_lock);
 sum = orig_ifinfo->bat_iv.bcast_own_sum;
 spin_unlock_bh(&orig_node->bat_iv.ogm_cnt_lock);

 batadv_orig_ifinfo_put(orig_ifinfo);

 return sum;
}
