
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cls_bpf_prog {int bpf_ops; int bpf_name; int filter; } ;


 int bpf_prog_destroy (int ) ;
 int bpf_prog_put (int ) ;
 scalar_t__ cls_bpf_is_ebpf (struct cls_bpf_prog*) ;
 int kfree (int ) ;

__attribute__((used)) static void cls_bpf_free_parms(struct cls_bpf_prog *prog)
{
 if (cls_bpf_is_ebpf(prog))
  bpf_prog_put(prog->filter);
 else
  bpf_prog_destroy(prog->filter);

 kfree(prog->bpf_name);
 kfree(prog->bpf_ops);
}
