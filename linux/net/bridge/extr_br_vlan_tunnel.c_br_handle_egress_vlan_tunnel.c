
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tunnel_dst; int tunnel_id; } ;
struct net_bridge_vlan {TYPE_2__ tinfo; } ;
struct TYPE_3__ {int dst; } ;


 int dst_clone (int *) ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 int skb_vlan_pop (struct sk_buff*) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int br_handle_egress_vlan_tunnel(struct sk_buff *skb,
     struct net_bridge_vlan *vlan)
{
 int err;

 if (!vlan || !vlan->tinfo.tunnel_id)
  return 0;

 if (unlikely(!skb_vlan_tag_present(skb)))
  return 0;

 skb_dst_drop(skb);
 err = skb_vlan_pop(skb);
 if (err)
  return err;

 skb_dst_set(skb, dst_clone(&vlan->tinfo.tunnel_dst->dst));

 return 0;
}
