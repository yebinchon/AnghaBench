
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_action_param {struct ebt_nat_info* targinfo; } ;
struct sk_buff {int pkt_type; } ;
struct net_device {int dev_addr; } ;
struct ebt_nat_info {unsigned int target; int mac; } ;
struct TYPE_6__ {TYPE_1__* br; } ;
struct TYPE_5__ {int h_dest; } ;
struct TYPE_4__ {struct net_device* dev; } ;


 unsigned int EBT_DROP ;
 int ETH_ALEN ;


 int PACKET_BROADCAST ;
 int PACKET_HOST ;
 int PACKET_MULTICAST ;
 int PACKET_OTHERHOST ;
 TYPE_3__* br_port_get_rcu (struct net_device*) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int ) ;
 int xt_hooknum (struct xt_action_param const*) ;
 struct net_device* xt_in (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
ebt_dnat_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct ebt_nat_info *info = par->targinfo;

 if (skb_ensure_writable(skb, ETH_ALEN))
  return EBT_DROP;

 ether_addr_copy(eth_hdr(skb)->h_dest, info->mac);

 if (is_multicast_ether_addr(info->mac)) {
  if (is_broadcast_ether_addr(info->mac))
   skb->pkt_type = PACKET_BROADCAST;
  else
   skb->pkt_type = PACKET_MULTICAST;
 } else {
  const struct net_device *dev;

  switch (xt_hooknum(par)) {
  case 129:
   dev = xt_in(par);
   break;
  case 128:
   dev = br_port_get_rcu(xt_in(par))->br->dev;
   break;
  default:
   dev = ((void*)0);
   break;
  }

  if (!dev)
   return info->target;

  if (ether_addr_equal(info->mac, dev->dev_addr))
   skb->pkt_type = PACKET_HOST;
  else
   skb->pkt_type = PACKET_OTHERHOST;
 }

 return info->target;
}
