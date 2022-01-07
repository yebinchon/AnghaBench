
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_raw_event_map {scalar_t__ bpf_func; int tp; } ;
struct bpf_prog {int dummy; } ;


 int tracepoint_probe_unregister (int ,void*,struct bpf_prog*) ;

int bpf_probe_unregister(struct bpf_raw_event_map *btp, struct bpf_prog *prog)
{
 return tracepoint_probe_unregister(btp->tp, (void *)btp->bpf_func, prog);
}
