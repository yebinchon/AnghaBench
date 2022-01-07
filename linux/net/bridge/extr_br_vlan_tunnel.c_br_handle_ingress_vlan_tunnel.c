
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int tunnel_hash; } ;
struct net_bridge_vlan {int vid; } ;
struct net_bridge_port {TYPE_2__* br; } ;
struct TYPE_3__ {int tun_id; } ;
struct ip_tunnel_info {TYPE_1__ key; } ;
struct TYPE_4__ {int vlan_proto; } ;


 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int ) ;
 struct net_bridge_vlan* br_vlan_tunnel_lookup (int *,int ) ;
 int skb_dst_drop (struct sk_buff*) ;
 struct ip_tunnel_info* skb_tunnel_info (struct sk_buff*) ;
 scalar_t__ skb_vlan_tagged (struct sk_buff*) ;

int br_handle_ingress_vlan_tunnel(struct sk_buff *skb,
      struct net_bridge_port *p,
      struct net_bridge_vlan_group *vg)
{
 struct ip_tunnel_info *tinfo = skb_tunnel_info(skb);
 struct net_bridge_vlan *vlan;

 if (!vg || !tinfo)
  return 0;


 if (skb_vlan_tagged(skb))
  return 0;


 vlan = br_vlan_tunnel_lookup(&vg->tunnel_hash, tinfo->key.tun_id);
 if (!vlan)
  return 0;

 skb_dst_drop(skb);

 __vlan_hwaccel_put_tag(skb, p->br->vlan_proto, vlan->vid);

 return 0;
}
