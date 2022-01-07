
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int data; } ;
struct flow_keys_basic {int dummy; } ;


 int __skb_get_poff (struct sk_buff const*,int ,struct flow_keys_basic*,int ) ;
 int skb_flow_dissect_flow_keys_basic (int *,struct sk_buff const*,struct flow_keys_basic*,int *,int ,int ,int ,int ) ;
 int skb_headlen (struct sk_buff const*) ;

u32 skb_get_poff(const struct sk_buff *skb)
{
 struct flow_keys_basic keys;

 if (!skb_flow_dissect_flow_keys_basic(((void*)0), skb, &keys,
           ((void*)0), 0, 0, 0, 0))
  return 0;

 return __skb_get_poff(skb, skb->data, &keys, skb_headlen(skb));
}
