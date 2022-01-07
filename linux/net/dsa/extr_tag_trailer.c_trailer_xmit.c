
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; scalar_t__ head; } ;
struct net_device {int dummy; } ;
struct dsa_port {int index; } ;


 int GFP_ATOMIC ;
 scalar_t__ NET_IP_ALIGN ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int consume_skb (struct sk_buff*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int skb_copy_and_csum_dev (struct sk_buff*,int*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_put_zero (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int skb_set_transport_header (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *trailer_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct sk_buff *nskb;
 int padlen;
 u8 *trailer;







 padlen = 0;
 if (skb->len < 60)
  padlen = 60 - skb->len;

 nskb = alloc_skb(NET_IP_ALIGN + skb->len + padlen + 4, GFP_ATOMIC);
 if (!nskb)
  return ((void*)0);
 skb_reserve(nskb, NET_IP_ALIGN);

 skb_reset_mac_header(nskb);
 skb_set_network_header(nskb, skb_network_header(skb) - skb->head);
 skb_set_transport_header(nskb, skb_transport_header(skb) - skb->head);
 skb_copy_and_csum_dev(skb, skb_put(nskb, skb->len));
 consume_skb(skb);

 if (padlen) {
  skb_put_zero(nskb, padlen);
 }

 trailer = skb_put(nskb, 4);
 trailer[0] = 0x80;
 trailer[1] = 1 << dp->index;
 trailer[2] = 0x10;
 trailer[3] = 0x00;

 return nskb;
}
