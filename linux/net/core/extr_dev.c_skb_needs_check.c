
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ ip_summed; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CHECKSUM_UNNECESSARY ;

__attribute__((used)) static inline bool skb_needs_check(struct sk_buff *skb, bool tx_path)
{
 if (tx_path)
  return skb->ip_summed != CHECKSUM_PARTIAL &&
         skb->ip_summed != CHECKSUM_UNNECESSARY;

 return skb->ip_summed == CHECKSUM_NONE;
}
