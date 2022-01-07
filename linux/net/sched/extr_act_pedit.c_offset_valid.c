
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;


 int skb_headroom (struct sk_buff*) ;

__attribute__((used)) static bool offset_valid(struct sk_buff *skb, int offset)
{
 if (offset > 0 && offset > skb->len)
  return 0;

 if (offset < 0 && -offset > skb_headroom(skb))
  return 0;

 return 1;
}
