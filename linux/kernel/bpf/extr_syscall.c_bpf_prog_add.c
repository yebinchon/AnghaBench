
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int refcnt; } ;


 scalar_t__ BPF_MAX_REFCNT ;
 int EBUSY ;
 struct bpf_prog* ERR_PTR (int ) ;
 scalar_t__ atomic_add_return (int,int *) ;
 int atomic_sub (int,int *) ;

struct bpf_prog *bpf_prog_add(struct bpf_prog *prog, int i)
{
 if (atomic_add_return(i, &prog->aux->refcnt) > BPF_MAX_REFCNT) {
  atomic_sub(i, &prog->aux->refcnt);
  return ERR_PTR(-EBUSY);
 }
 return prog;
}
