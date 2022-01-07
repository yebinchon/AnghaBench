
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; } ;
typedef int __u32 ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int NFQA_SKB_CSUMNOTREADY ;
 int NFQA_SKB_CSUM_NOTVERIFIED ;
 int NFQA_SKB_GSO ;
 int NFQA_SKB_INFO ;
 int htonl (int) ;
 int nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static int
nfqnl_put_packet_info(struct sk_buff *nlskb, struct sk_buff *packet,
        bool csum_verify)
{
 __u32 flags = 0;

 if (packet->ip_summed == CHECKSUM_PARTIAL)
  flags = NFQA_SKB_CSUMNOTREADY;
 else if (csum_verify)
  flags = NFQA_SKB_CSUM_NOTVERIFIED;

 if (skb_is_gso(packet))
  flags |= NFQA_SKB_GSO;

 return flags ? nla_put_be32(nlskb, NFQA_SKB_INFO, htonl(flags)) : 0;
}
