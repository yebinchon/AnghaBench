
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_raw_event_map {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int __bpf_probe_register (struct bpf_raw_event_map*,struct bpf_prog*) ;

int bpf_probe_register(struct bpf_raw_event_map *btp, struct bpf_prog *prog)
{
 return __bpf_probe_register(btp, prog);
}
