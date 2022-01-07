
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge {int dummy; } ;
struct TYPE_2__ {int vlan_filtered; } ;


 int BROPT_VLAN_ENABLED ;
 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff*) ;
 int __allowed_ingress (struct net_bridge const*,struct net_bridge_vlan_group*,struct sk_buff*,int *) ;
 int br_opt_get (struct net_bridge const*,int ) ;

bool br_allowed_ingress(const struct net_bridge *br,
   struct net_bridge_vlan_group *vg, struct sk_buff *skb,
   u16 *vid)
{



 if (!br_opt_get(br, BROPT_VLAN_ENABLED)) {
  BR_INPUT_SKB_CB(skb)->vlan_filtered = 0;
  return 1;
 }

 return __allowed_ingress(br, vg, skb, vid);
}
