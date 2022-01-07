
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_prog_offload {int dev_state; TYPE_3__* offdev; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* prepare ) (struct bpf_prog*) ;} ;
struct TYPE_4__ {struct bpf_prog_offload* offload; } ;


 int ENODEV ;
 int bpf_devs_lock ;
 int down_read (int *) ;
 int stub1 (struct bpf_prog*) ;
 int up_read (int *) ;

int bpf_prog_offload_verifier_prep(struct bpf_prog *prog)
{
 struct bpf_prog_offload *offload;
 int ret = -ENODEV;

 down_read(&bpf_devs_lock);
 offload = prog->aux->offload;
 if (offload) {
  ret = offload->offdev->ops->prepare(prog);
  offload->dev_state = !ret;
 }
 up_read(&bpf_devs_lock);

 return ret;
}
