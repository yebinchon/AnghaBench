
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int mark; } ;



__attribute__((used)) static u32 flow_get_mark(const struct sk_buff *skb)
{
 return skb->mark;
}
