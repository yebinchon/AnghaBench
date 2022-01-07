
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; } ;



__attribute__((used)) static u32 codel_skb_len_func(const struct sk_buff *skb)
{
 return skb->len;
}
