
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_info {int metaid; scalar_t__ metaval; } ;
struct sk_buff {int dummy; } ;


 int nla_put (struct sk_buff*,int ,int ,int *) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;

int ife_get_meta_u32(struct sk_buff *skb, struct tcf_meta_info *mi)
{
 if (mi->metaval)
  return nla_put_u32(skb, mi->metaid, *(u32 *)mi->metaval);
 else
  return nla_put(skb, mi->metaid, 0, ((void*)0));
}
