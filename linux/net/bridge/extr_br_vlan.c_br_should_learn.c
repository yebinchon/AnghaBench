
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ vlan_proto; } ;
struct net_bridge_vlan_group {int num_vlans; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {scalar_t__ vlan_proto; } ;


 int BROPT_VLAN_ENABLED ;
 int br_get_pvid (struct net_bridge_vlan_group*) ;
 int br_opt_get (struct net_bridge*,int ) ;
 scalar_t__ br_vlan_find (struct net_bridge_vlan_group*,int ) ;
 int br_vlan_get_tag (struct sk_buff*,int *) ;
 struct net_bridge_vlan_group* nbp_vlan_group_rcu (struct net_bridge_port*) ;

bool br_should_learn(struct net_bridge_port *p, struct sk_buff *skb, u16 *vid)
{
 struct net_bridge_vlan_group *vg;
 struct net_bridge *br = p->br;


 if (!br_opt_get(br, BROPT_VLAN_ENABLED))
  return 1;

 vg = nbp_vlan_group_rcu(p);
 if (!vg || !vg->num_vlans)
  return 0;

 if (!br_vlan_get_tag(skb, vid) && skb->vlan_proto != br->vlan_proto)
  *vid = 0;

 if (!*vid) {
  *vid = br_get_pvid(vg);
  if (!*vid)
   return 0;

  return 1;
 }

 if (br_vlan_find(vg, *vid))
  return 1;

 return 0;
}
