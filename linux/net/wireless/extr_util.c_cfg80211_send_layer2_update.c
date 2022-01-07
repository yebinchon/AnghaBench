
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int cb; int protocol; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct iapp_layer2_update {int ssap; int control; int* xid_info; scalar_t__ dsap; int len; int sa; int da; } ;


 struct sk_buff* dev_alloc_skb (int) ;
 int eth_broadcast_addr (int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ether_addr_copy (int ,int const*) ;
 int htons (int) ;
 int memset (int ,int ,int) ;
 int netif_rx_ni (struct sk_buff*) ;
 struct iapp_layer2_update* skb_put (struct sk_buff*,int) ;

void cfg80211_send_layer2_update(struct net_device *dev, const u8 *addr)
{
 struct iapp_layer2_update *msg;
 struct sk_buff *skb;




 skb = dev_alloc_skb(sizeof(*msg));
 if (!skb)
  return;
 msg = skb_put(skb, sizeof(*msg));




 eth_broadcast_addr(msg->da);
 ether_addr_copy(msg->sa, addr);
 msg->len = htons(6);
 msg->dsap = 0;
 msg->ssap = 0x01;
 msg->control = 0xaf;

 msg->xid_info[0] = 0x81;
 msg->xid_info[1] = 1;
 msg->xid_info[2] = 0;

 skb->dev = dev;
 skb->protocol = eth_type_trans(skb, dev);
 memset(skb->cb, 0, sizeof(skb->cb));
 netif_rx_ni(skb);
}
