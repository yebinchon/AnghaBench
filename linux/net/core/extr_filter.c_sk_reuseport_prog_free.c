
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {scalar_t__ type; } ;


 scalar_t__ BPF_PROG_TYPE_SK_REUSEPORT ;
 int bpf_prog_destroy (struct bpf_prog*) ;
 int bpf_prog_put (struct bpf_prog*) ;

void sk_reuseport_prog_free(struct bpf_prog *prog)
{
 if (!prog)
  return;

 if (prog->type == BPF_PROG_TYPE_SK_REUSEPORT)
  bpf_prog_put(prog);
 else
  bpf_prog_destroy(prog);
}
