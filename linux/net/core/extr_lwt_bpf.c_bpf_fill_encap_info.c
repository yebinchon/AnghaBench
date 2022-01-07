
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct lwtunnel_state {int dummy; } ;
struct bpf_lwt {int xmit; int out; int in; } ;


 int EMSGSIZE ;
 int LWT_BPF_IN ;
 int LWT_BPF_OUT ;
 int LWT_BPF_XMIT ;
 scalar_t__ bpf_fill_lwt_prog (struct sk_buff*,int ,int *) ;
 struct bpf_lwt* bpf_lwt_lwtunnel (struct lwtunnel_state*) ;

__attribute__((used)) static int bpf_fill_encap_info(struct sk_buff *skb, struct lwtunnel_state *lwt)
{
 struct bpf_lwt *bpf = bpf_lwt_lwtunnel(lwt);

 if (bpf_fill_lwt_prog(skb, LWT_BPF_IN, &bpf->in) < 0 ||
     bpf_fill_lwt_prog(skb, LWT_BPF_OUT, &bpf->out) < 0 ||
     bpf_fill_lwt_prog(skb, LWT_BPF_XMIT, &bpf->xmit) < 0)
  return -EMSGSIZE;

 return 0;
}
