
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;


 int KSZ9477_PTP_TAG_INDICATION ;
 scalar_t__ KSZ9477_PTP_TAG_LEN ;
 int KSZ_EGRESS_TAG_LEN ;
 struct sk_buff* ksz_common_rcv (struct sk_buff*,struct net_device*,unsigned int,unsigned int) ;
 int skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *ksz9477_rcv(struct sk_buff *skb, struct net_device *dev,
       struct packet_type *pt)
{

 u8 *tag = skb_tail_pointer(skb) - KSZ_EGRESS_TAG_LEN;
 unsigned int port = tag[0] & 7;
 unsigned int len = KSZ_EGRESS_TAG_LEN;


 if (tag[0] & KSZ9477_PTP_TAG_INDICATION)
  len += KSZ9477_PTP_TAG_LEN;

 return ksz_common_rcv(skb, dev, port, len);
}
