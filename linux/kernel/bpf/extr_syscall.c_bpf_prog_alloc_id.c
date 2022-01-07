
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int id; } ;


 int ENOSPC ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int idr_alloc_cyclic (int *,struct bpf_prog*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int prog_idr ;
 int prog_idr_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int bpf_prog_alloc_id(struct bpf_prog *prog)
{
 int id;

 idr_preload(GFP_KERNEL);
 spin_lock_bh(&prog_idr_lock);
 id = idr_alloc_cyclic(&prog_idr, prog, 1, INT_MAX, GFP_ATOMIC);
 if (id > 0)
  prog->aux->id = id;
 spin_unlock_bh(&prog_idr_lock);
 idr_preload_end();


 if (WARN_ON_ONCE(!id))
  return -ENOSPC;

 return id > 0 ? 0 : id;
}
