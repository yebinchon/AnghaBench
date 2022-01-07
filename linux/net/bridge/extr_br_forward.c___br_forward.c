
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {TYPE_1__* br; struct net_device* dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ETH_HLEN ;
 int NFPROTO_BRIDGE ;
 int NF_BR_FORWARD ;
 int NF_BR_LOCAL_OUT ;
 int NF_HOOK (int ,int,struct net*,int *,struct sk_buff*,struct net_device*,struct net_device*,int ) ;
 int br_forward_finish ;
 struct sk_buff* br_handle_vlan (TYPE_1__*,struct net_bridge_port const*,struct net_bridge_vlan_group*,struct sk_buff*) ;
 int br_netpoll_send_skb (struct net_bridge_port const*,struct sk_buff*) ;
 struct net* dev_net (struct net_device*) ;
 int is_skb_forwardable (struct net_device*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct net_bridge_vlan_group* nbp_vlan_group_rcu (struct net_bridge_port const*) ;
 int netpoll_tx_running (int ) ;
 int skb_forward_csum (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 scalar_t__ skb_warn_if_lro (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __br_forward(const struct net_bridge_port *to,
    struct sk_buff *skb, bool local_orig)
{
 struct net_bridge_vlan_group *vg;
 struct net_device *indev;
 struct net *net;
 int br_hook;

 vg = nbp_vlan_group_rcu(to);
 skb = br_handle_vlan(to->br, to, vg, skb);
 if (!skb)
  return;

 indev = skb->dev;
 skb->dev = to->dev;
 if (!local_orig) {
  if (skb_warn_if_lro(skb)) {
   kfree_skb(skb);
   return;
  }
  br_hook = NF_BR_FORWARD;
  skb_forward_csum(skb);
  net = dev_net(indev);
 } else {
  if (unlikely(netpoll_tx_running(to->br->dev))) {
   skb_push(skb, ETH_HLEN);
   if (!is_skb_forwardable(skb->dev, skb))
    kfree_skb(skb);
   else
    br_netpoll_send_skb(to, skb);
   return;
  }
  br_hook = NF_BR_LOCAL_OUT;
  net = dev_net(skb->dev);
  indev = ((void*)0);
 }

 NF_HOOK(NFPROTO_BRIDGE, br_hook,
  net, ((void*)0), skb, indev, skb->dev,
  br_forward_finish);
}
