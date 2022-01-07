
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ csum_not_inet; int ip_summed; } ;
typedef int __le32 ;


 int CHECKSUM_NONE ;
 int gso_reset_checksum (struct sk_buff*,int ) ;
 int sctp_compute_cksum (struct sk_buff*,int ) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static __le32 sctp_gso_make_checksum(struct sk_buff *skb)
{
 skb->ip_summed = CHECKSUM_NONE;
 skb->csum_not_inet = 0;
 gso_reset_checksum(skb, ~0);
 return sctp_compute_cksum(skb, skb_transport_offset(skb));
}
