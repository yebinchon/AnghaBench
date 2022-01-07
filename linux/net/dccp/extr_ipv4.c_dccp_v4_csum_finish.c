
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int csum; int len; } ;
typedef int __sum16 ;
typedef int __be32 ;


 int IPPROTO_DCCP ;
 int csum_tcpudp_magic (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline __sum16 dccp_v4_csum_finish(struct sk_buff *skb,
          __be32 src, __be32 dst)
{
 return csum_tcpudp_magic(src, dst, skb->len, IPPROTO_DCCP, skb->csum);
}
