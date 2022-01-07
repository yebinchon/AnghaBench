
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {int dummy; } ;
struct bpf_lwt {int xmit; int out; int in; } ;


 struct bpf_lwt* bpf_lwt_lwtunnel (struct lwtunnel_state*) ;
 scalar_t__ bpf_lwt_prog_cmp (int *,int *) ;

__attribute__((used)) static int bpf_encap_cmp(struct lwtunnel_state *a, struct lwtunnel_state *b)
{
 struct bpf_lwt *a_bpf = bpf_lwt_lwtunnel(a);
 struct bpf_lwt *b_bpf = bpf_lwt_lwtunnel(b);

 return bpf_lwt_prog_cmp(&a_bpf->in, &b_bpf->in) ||
        bpf_lwt_prog_cmp(&a_bpf->out, &b_bpf->out) ||
        bpf_lwt_prog_cmp(&a_bpf->xmit, &b_bpf->xmit);
}
