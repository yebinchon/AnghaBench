
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct dst_entry {TYPE_2__* lwtstate; } ;
struct TYPE_3__ {int name; scalar_t__ prog; } ;
struct bpf_lwt {TYPE_1__ out; } ;
struct TYPE_4__ {int (* orig_output ) (struct net*,struct sock*,struct sk_buff*) ;} ;


 int EINVAL ;
 int NO_REDIRECT ;
 struct bpf_lwt* bpf_lwt_lwtunnel (TYPE_2__*) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_warn_once (char*,int ) ;
 int run_lwt_bpf (struct sk_buff*,TYPE_1__*,struct dst_entry*,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct net*,struct sock*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bpf_output(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);
 struct bpf_lwt *bpf;
 int ret;

 bpf = bpf_lwt_lwtunnel(dst->lwtstate);
 if (bpf->out.prog) {
  ret = run_lwt_bpf(skb, &bpf->out, dst, NO_REDIRECT);
  if (ret < 0)
   return ret;
 }

 if (unlikely(!dst->lwtstate->orig_output)) {
  pr_warn_once("orig_output not set on dst for prog %s\n",
        bpf->out.name);
  kfree_skb(skb);
  return -EINVAL;
 }

 return dst->lwtstate->orig_output(net, sk, skb);
}
