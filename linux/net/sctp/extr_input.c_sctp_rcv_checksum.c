
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sctphdr {scalar_t__ checksum; } ;
struct net {int dummy; } ;
typedef scalar_t__ __le32 ;


 int SCTP_MIB_CHECKSUMERRORS ;
 int __SCTP_INC_STATS (struct net*,int ) ;
 scalar_t__ sctp_compute_cksum (struct sk_buff*,int ) ;
 struct sctphdr* sctp_hdr (struct sk_buff*) ;

__attribute__((used)) static inline int sctp_rcv_checksum(struct net *net, struct sk_buff *skb)
{
 struct sctphdr *sh = sctp_hdr(skb);
 __le32 cmp = sh->checksum;
 __le32 val = sctp_compute_cksum(skb, 0);

 if (val != cmp) {

  __SCTP_INC_STATS(net, SCTP_MIB_CHECKSUMERRORS);
  return -1;
 }
 return 0;
}
