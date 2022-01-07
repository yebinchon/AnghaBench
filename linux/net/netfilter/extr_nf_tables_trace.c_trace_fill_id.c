
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int skb_iif; } ;
typedef scalar_t__ __be32 ;


 int NFTA_TRACE_ID ;
 int hash32_ptr (struct sk_buff*) ;
 scalar_t__ jhash_2words (int ,int ,int ) ;
 int nla_put_be32 (struct sk_buff*,int ,scalar_t__) ;
 int skb_get_hash (struct sk_buff*) ;

__attribute__((used)) static int trace_fill_id(struct sk_buff *nlskb, struct sk_buff *skb)
{
 __be32 id;







 id = (__be32)jhash_2words(hash32_ptr(skb), skb_get_hash(skb),
      skb->skb_iif);

 return nla_put_be32(nlskb, NFTA_TRACE_ID, id);
}
