
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int data; int dev; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int ETH_HLEN ;
 int QCA_HDR_LEN ;
 int QCA_HDR_RECV_SOURCE_PORT_MASK ;
 int QCA_HDR_RECV_VERSION_MASK ;
 int QCA_HDR_RECV_VERSION_S ;
 int QCA_HDR_VERSION ;
 int dsa_master_find_slave (struct net_device*,int ,int) ;
 int memmove (int,int,int) ;
 int ntohs (int) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *qca_tag_rcv(struct sk_buff *skb, struct net_device *dev,
       struct packet_type *pt)
{
 u8 ver;
 int port;
 __be16 *phdr, hdr;

 if (unlikely(!pskb_may_pull(skb, QCA_HDR_LEN)))
  return ((void*)0);





 phdr = (__be16 *)(skb->data - 2);
 hdr = ntohs(*phdr);


 ver = (hdr & QCA_HDR_RECV_VERSION_MASK) >> QCA_HDR_RECV_VERSION_S;
 if (unlikely(ver != QCA_HDR_VERSION))
  return ((void*)0);


 skb_pull_rcsum(skb, QCA_HDR_LEN);
 memmove(skb->data - ETH_HLEN, skb->data - ETH_HLEN - QCA_HDR_LEN,
  ETH_HLEN - QCA_HDR_LEN);


 port = (hdr & QCA_HDR_RECV_SOURCE_PORT_MASK);

 skb->dev = dsa_master_find_slave(dev, 0, port);
 if (!skb->dev)
  return ((void*)0);

 return skb;
}
