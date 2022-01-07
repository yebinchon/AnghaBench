
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int GRO_DROP ;
 int dev_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int napi_frags_finish (struct napi_struct*,struct sk_buff*,int ) ;
 struct sk_buff* napi_frags_skb (struct napi_struct*) ;
 int trace_napi_gro_frags_entry (struct sk_buff*) ;
 int trace_napi_gro_frags_exit (int ) ;

gro_result_t napi_gro_frags(struct napi_struct *napi)
{
 gro_result_t ret;
 struct sk_buff *skb = napi_frags_skb(napi);

 if (!skb)
  return GRO_DROP;

 trace_napi_gro_frags_entry(skb);

 ret = napi_frags_finish(napi, skb, dev_gro_receive(napi, skb));
 trace_napi_gro_frags_exit(ret);

 return ret;
}
