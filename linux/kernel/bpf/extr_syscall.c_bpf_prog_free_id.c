
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int __acquire (int *) ;
 int __release (int *) ;
 int idr_remove (int *,scalar_t__) ;
 int prog_idr ;
 int prog_idr_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void bpf_prog_free_id(struct bpf_prog *prog, bool do_idr_lock)
{





 if (!prog->aux->id)
  return;

 if (do_idr_lock)
  spin_lock_bh(&prog_idr_lock);
 else
  __acquire(&prog_idr_lock);

 idr_remove(&prog_idr, prog->aux->id);
 prog->aux->id = 0;

 if (do_idr_lock)
  spin_unlock_bh(&prog_idr_lock);
 else
  __release(&prog_idr_lock);
}
