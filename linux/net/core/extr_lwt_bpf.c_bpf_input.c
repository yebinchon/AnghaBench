
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct dst_entry {TYPE_2__* lwtstate; } ;
struct TYPE_3__ {scalar_t__ prog; } ;
struct bpf_lwt {TYPE_1__ in; } ;
struct TYPE_4__ {int (* orig_input ) (struct sk_buff*) ;} ;


 int BPF_LWT_REROUTE ;
 int EINVAL ;
 int NO_REDIRECT ;
 int bpf_lwt_input_reroute (struct sk_buff*) ;
 struct bpf_lwt* bpf_lwt_lwtunnel (TYPE_2__*) ;
 int kfree_skb (struct sk_buff*) ;
 int run_lwt_bpf (struct sk_buff*,TYPE_1__*,struct dst_entry*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bpf_input(struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct bpf_lwt *bpf;
 int ret;

 bpf = bpf_lwt_lwtunnel(dst->lwtstate);
 if (bpf->in.prog) {
  ret = run_lwt_bpf(skb, &bpf->in, dst, NO_REDIRECT);
  if (ret < 0)
   return ret;
  if (ret == BPF_LWT_REROUTE)
   return bpf_lwt_input_reroute(skb);
 }

 if (unlikely(!dst->lwtstate->orig_input)) {
  kfree_skb(skb);
  return -EINVAL;
 }

 return dst->lwtstate->orig_input(skb);
}
