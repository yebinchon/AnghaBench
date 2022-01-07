
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int refcnt; } ;


 int BPF_MAX_REFCNT ;
 int EBUSY ;
 int ENOENT ;
 struct bpf_prog* ERR_PTR (int ) ;
 int __bpf_prog_put (struct bpf_prog*,int) ;
 int atomic_fetch_add_unless (int *,int,int ) ;

struct bpf_prog *bpf_prog_inc_not_zero(struct bpf_prog *prog)
{
 int refold;

 refold = atomic_fetch_add_unless(&prog->aux->refcnt, 1, 0);

 if (refold >= BPF_MAX_REFCNT) {
  __bpf_prog_put(prog, 0);
  return ERR_PTR(-EBUSY);
 }

 if (!refold)
  return ERR_PTR(-ENOENT);

 return prog;
}
