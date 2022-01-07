
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_vlan {int dummy; } ;
struct TYPE_2__ {int vlan_filtered; } ;


 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff const*) ;
 struct net_bridge_vlan* br_vlan_find (struct net_bridge_vlan_group*,int ) ;
 int br_vlan_get_tag (struct sk_buff const*,int *) ;
 scalar_t__ br_vlan_should_use (struct net_bridge_vlan const*) ;

bool br_allowed_egress(struct net_bridge_vlan_group *vg,
         const struct sk_buff *skb)
{
 const struct net_bridge_vlan *v;
 u16 vid;


 if (!BR_INPUT_SKB_CB(skb)->vlan_filtered)
  return 1;

 br_vlan_get_tag(skb, &vid);
 v = br_vlan_find(vg, vid);
 if (v && br_vlan_should_use(v))
  return 1;

 return 0;
}
