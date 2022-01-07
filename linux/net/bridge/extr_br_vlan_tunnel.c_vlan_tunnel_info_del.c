
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_bridge_vlan_group {int tunnel_hash; } ;
struct TYPE_4__ {TYPE_1__* tunnel_dst; scalar_t__ tunnel_id; } ;
struct net_bridge_vlan {TYPE_2__ tinfo; int tnode; } ;
struct TYPE_3__ {int dst; } ;


 int br_vlan_tunnel_rht_params ;
 int dst_release (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

void vlan_tunnel_info_del(struct net_bridge_vlan_group *vg,
     struct net_bridge_vlan *vlan)
{
 if (!vlan->tinfo.tunnel_dst)
  return;
 rhashtable_remove_fast(&vg->tunnel_hash, &vlan->tnode,
          br_vlan_tunnel_rht_params);
 vlan->tinfo.tunnel_id = 0;
 dst_release(&vlan->tinfo.tunnel_dst->dst);
 vlan->tinfo.tunnel_dst = ((void*)0);
}
