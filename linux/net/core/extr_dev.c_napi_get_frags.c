
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {struct sk_buff* skb; } ;


 int GRO_MAX_HEAD ;
 struct sk_buff* napi_alloc_skb (struct napi_struct*,int ) ;
 int skb_mark_napi_id (struct sk_buff*,struct napi_struct*) ;

struct sk_buff *napi_get_frags(struct napi_struct *napi)
{
 struct sk_buff *skb = napi->skb;

 if (!skb) {
  skb = napi_alloc_skb(napi, GRO_MAX_HEAD);
  if (skb) {
   napi->skb = skb;
   skb_mark_napi_id(skb, napi);
  }
 }
 return skb;
}
