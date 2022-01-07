
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct dst_entry {int lwtstate; } ;
struct TYPE_2__ {scalar_t__ prog; } ;
struct bpf_lwt {TYPE_1__ xmit; } ;
typedef int __be16 ;





 int CAN_REDIRECT ;
 int EINVAL ;
 int LWTUNNEL_XMIT_CONTINUE ;
 int LWTUNNEL_XMIT_DONE ;
 struct bpf_lwt* bpf_lwt_lwtunnel (int ) ;
 int bpf_lwt_xmit_reroute (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int run_lwt_bpf (struct sk_buff*,TYPE_1__*,struct dst_entry*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int unlikely (int) ;
 int xmit_check_hhlen (struct sk_buff*) ;

__attribute__((used)) static int bpf_xmit(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct bpf_lwt *bpf;

 bpf = bpf_lwt_lwtunnel(dst->lwtstate);
 if (bpf->xmit.prog) {
  __be16 proto = skb->protocol;
  int ret;

  ret = run_lwt_bpf(skb, &bpf->xmit, dst, CAN_REDIRECT);
  switch (ret) {
  case 129:




   if (skb->protocol != proto) {
    kfree_skb(skb);
    return -EINVAL;
   }



   ret = xmit_check_hhlen(skb);
   if (unlikely(ret))
    return ret;

   return LWTUNNEL_XMIT_CONTINUE;
  case 128:
   return LWTUNNEL_XMIT_DONE;
  case 130:
   return bpf_lwt_xmit_reroute(skb);
  default:
   return ret;
  }
 }

 return LWTUNNEL_XMIT_CONTINUE;
}
