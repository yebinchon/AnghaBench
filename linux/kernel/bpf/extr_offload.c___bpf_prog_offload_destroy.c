
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_prog_offload {int offloads; TYPE_2__* offdev; scalar_t__ dev_state; } ;
struct bpf_prog {TYPE_3__* aux; } ;
struct TYPE_6__ {struct bpf_prog_offload* offload; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* destroy ) (struct bpf_prog*) ;} ;


 int bpf_prog_free_id (struct bpf_prog*,int) ;
 int kfree (struct bpf_prog_offload*) ;
 int list_del_init (int *) ;
 int stub1 (struct bpf_prog*) ;

__attribute__((used)) static void __bpf_prog_offload_destroy(struct bpf_prog *prog)
{
 struct bpf_prog_offload *offload = prog->aux->offload;

 if (offload->dev_state)
  offload->offdev->ops->destroy(prog);


 bpf_prog_free_id(prog, 1);

 list_del_init(&offload->offloads);
 kfree(offload);
 prog->aux->offload = ((void*)0);
}
