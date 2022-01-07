
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {int dummy; } ;
struct bpf_lwt {int xmit; int out; int in; } ;


 struct bpf_lwt* bpf_lwt_lwtunnel (struct lwtunnel_state*) ;
 int bpf_lwt_prog_destroy (int *) ;

__attribute__((used)) static void bpf_destroy_state(struct lwtunnel_state *lwt)
{
 struct bpf_lwt *bpf = bpf_lwt_lwtunnel(lwt);

 bpf_lwt_prog_destroy(&bpf->in);
 bpf_lwt_prog_destroy(&bpf->out);
 bpf_lwt_prog_destroy(&bpf->xmit);
}
