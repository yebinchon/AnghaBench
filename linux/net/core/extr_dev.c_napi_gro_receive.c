
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
typedef int gro_result_t ;


 int dev_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int napi_skb_finish (int ,struct sk_buff*) ;
 int skb_gro_reset_offset (struct sk_buff*) ;
 int skb_mark_napi_id (struct sk_buff*,struct napi_struct*) ;
 int trace_napi_gro_receive_entry (struct sk_buff*) ;
 int trace_napi_gro_receive_exit (int ) ;

gro_result_t napi_gro_receive(struct napi_struct *napi, struct sk_buff *skb)
{
 gro_result_t ret;

 skb_mark_napi_id(skb, napi);
 trace_napi_gro_receive_entry(skb);

 skb_gro_reset_offset(skb);

 ret = napi_skb_finish(dev_gro_receive(napi, skb), skb);
 trace_napi_gro_receive_exit(ret);

 return ret;
}
