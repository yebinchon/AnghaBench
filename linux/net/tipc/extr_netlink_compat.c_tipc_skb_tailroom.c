
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;


 int TIPC_SKB_MAX ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int tipc_skb_tailroom(struct sk_buff *skb)
{
 int tailroom;
 int limit;

 tailroom = skb_tailroom(skb);
 limit = TIPC_SKB_MAX - skb->len;

 if (tailroom < limit)
  return tailroom;

 return limit;
}
