
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_media_addr {int value; } ;
struct tipc_bearer {int media_ptr; } ;
struct sk_buff {int len; int protocol; struct net_device* dev; } ;
struct net_device {int dev_addr; scalar_t__ hard_header_len; } ;
struct net {int dummy; } ;


 int ETH_P_TIPC ;
 int GFP_ATOMIC ;
 int SKB_DATA_ALIGN (scalar_t__) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int ,int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int,int ,int ) ;
 scalar_t__ rcu_dereference (int ) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;

int tipc_l2_send_msg(struct net *net, struct sk_buff *skb,
       struct tipc_bearer *b, struct tipc_media_addr *dest)
{
 struct net_device *dev;
 int delta;

 dev = (struct net_device *)rcu_dereference(b->media_ptr);
 if (!dev)
  return 0;

 delta = SKB_DATA_ALIGN(dev->hard_header_len - skb_headroom(skb));
 if ((delta > 0) && pskb_expand_head(skb, delta, 0, GFP_ATOMIC)) {
  kfree_skb(skb);
  return 0;
 }
 skb_reset_network_header(skb);
 skb->dev = dev;
 skb->protocol = htons(ETH_P_TIPC);
 dev_hard_header(skb, dev, ETH_P_TIPC, dest->value,
   dev->dev_addr, skb->len);
 dev_queue_xmit(skb);
 return 0;
}
