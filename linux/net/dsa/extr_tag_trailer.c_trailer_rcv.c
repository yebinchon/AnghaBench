
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ len; int dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;


 int dsa_master_find_slave (struct net_device*,int ,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *trailer_rcv(struct sk_buff *skb, struct net_device *dev,
       struct packet_type *pt)
{
 u8 *trailer;
 int source_port;

 if (skb_linearize(skb))
  return ((void*)0);

 trailer = skb_tail_pointer(skb) - 4;
 if (trailer[0] != 0x80 || (trailer[1] & 0xf8) != 0x00 ||
     (trailer[2] & 0xef) != 0x00 || trailer[3] != 0x00)
  return ((void*)0);

 source_port = trailer[1] & 7;

 skb->dev = dsa_master_find_slave(dev, 0, source_port);
 if (!skb->dev)
  return ((void*)0);

 if (pskb_trim_rcsum(skb, skb->len - 4))
  return ((void*)0);

 return skb;
}
