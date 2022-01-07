
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dev; int data; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;


 int ETH_HLEN ;
 int GSWIP_RX_HEADER_LEN ;
 int GSWIP_RX_SPPID_MASK ;
 int GSWIP_RX_SPPID_SHIFT ;
 int dsa_master_find_slave (struct net_device*,int ,int) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int skb_pull_rcsum (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *gswip_tag_rcv(struct sk_buff *skb,
         struct net_device *dev,
         struct packet_type *pt)
{
 int port;
 u8 *gswip_tag;

 if (unlikely(!pskb_may_pull(skb, GSWIP_RX_HEADER_LEN)))
  return ((void*)0);

 gswip_tag = skb->data - ETH_HLEN;


 port = (gswip_tag[7] & GSWIP_RX_SPPID_MASK) >> GSWIP_RX_SPPID_SHIFT;
 skb->dev = dsa_master_find_slave(dev, 0, port);
 if (!skb->dev)
  return ((void*)0);


 skb_pull_rcsum(skb, GSWIP_RX_HEADER_LEN);

 return skb;
}
