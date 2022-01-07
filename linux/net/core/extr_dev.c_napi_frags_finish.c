
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; int protocol; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;
struct TYPE_2__ {int free; } ;


 int ETH_HLEN ;






 TYPE_1__* NAPI_GRO_CB (struct sk_buff*) ;
 int NAPI_GRO_FREE_STOLEN_HEAD ;
 int __skb_push (struct sk_buff*,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int gro_normal_one (struct napi_struct*,struct sk_buff*) ;
 int napi_reuse_skb (struct napi_struct*,struct sk_buff*) ;
 int napi_skb_free_stolen_head (struct sk_buff*) ;

__attribute__((used)) static gro_result_t napi_frags_finish(struct napi_struct *napi,
          struct sk_buff *skb,
          gro_result_t ret)
{
 switch (ret) {
 case 128:
 case 131:
  __skb_push(skb, ETH_HLEN);
  skb->protocol = eth_type_trans(skb, skb->dev);
  if (ret == 128)
   gro_normal_one(napi, skb);
  break;

 case 132:
  napi_reuse_skb(napi, skb);
  break;

 case 129:
  if (NAPI_GRO_CB(skb)->free == NAPI_GRO_FREE_STOLEN_HEAD)
   napi_skb_free_stolen_head(skb);
  else
   napi_reuse_skb(napi, skb);
  break;

 case 130:
 case 133:
  break;
 }

 return ret;
}
