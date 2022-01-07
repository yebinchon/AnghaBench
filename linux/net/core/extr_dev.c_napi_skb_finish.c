
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int gro_result_t ;
struct TYPE_2__ {int free; } ;
 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 int NAPI_GRO_FREE_STOLEN_HEAD ;
 int __kfree_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int napi_skb_free_stolen_head (struct sk_buff*) ;
 int netif_receive_skb_internal (struct sk_buff*) ;

__attribute__((used)) static gro_result_t napi_skb_finish(gro_result_t ret, struct sk_buff *skb)
{
 switch (ret) {
 case 128:
  if (netif_receive_skb_internal(skb))
   ret = 132;
  break;

 case 132:
  kfree_skb(skb);
  break;

 case 129:
  if (NAPI_GRO_CB(skb)->free == NAPI_GRO_FREE_STOLEN_HEAD)
   napi_skb_free_stolen_head(skb);
  else
   __kfree_skb(skb);
  break;

 case 131:
 case 130:
 case 133:
  break;
 }

 return ret;
}
