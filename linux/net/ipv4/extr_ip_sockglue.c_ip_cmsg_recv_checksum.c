
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; int csum; } ;
struct msghdr {int dummy; } ;
typedef int __wsum ;


 scalar_t__ CHECKSUM_COMPLETE ;
 int IP_CHECKSUM ;
 int SOL_IP ;
 int csum_sub (int ,int ) ;
 int put_cmsg (struct msghdr*,int ,int ,int,int *) ;
 int skb_checksum (struct sk_buff*,int,int,int ) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static void ip_cmsg_recv_checksum(struct msghdr *msg, struct sk_buff *skb,
      int tlen, int offset)
{
 __wsum csum = skb->csum;

 if (skb->ip_summed != CHECKSUM_COMPLETE)
  return;

 if (offset != 0) {
  int tend_off = skb_transport_offset(skb) + tlen;
  csum = csum_sub(csum, skb_checksum(skb, tend_off, offset, 0));
 }

 put_cmsg(msg, SOL_IP, IP_CHECKSUM, sizeof(__wsum), &csum);
}
