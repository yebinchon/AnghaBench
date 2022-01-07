
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int encap_mark; int flush; } ;


 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 struct sk_buff* inet_gro_receive (struct list_head*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *ip4ip6_gro_receive(struct list_head *head,
       struct sk_buff *skb)
{


 if (NAPI_GRO_CB(skb)->encap_mark) {
  NAPI_GRO_CB(skb)->flush = 1;
  return ((void*)0);
 }

 NAPI_GRO_CB(skb)->encap_mark = 1;

 return inet_gro_receive(head, skb);
}
