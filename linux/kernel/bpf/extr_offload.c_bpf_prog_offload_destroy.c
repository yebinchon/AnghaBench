
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {scalar_t__ offload; } ;


 int __bpf_prog_offload_destroy (struct bpf_prog*) ;
 int bpf_devs_lock ;
 int down_write (int *) ;
 int up_write (int *) ;

void bpf_prog_offload_destroy(struct bpf_prog *prog)
{
 down_write(&bpf_devs_lock);
 if (prog->aux->offload)
  __bpf_prog_offload_destroy(prog);
 up_write(&bpf_devs_lock);
}
