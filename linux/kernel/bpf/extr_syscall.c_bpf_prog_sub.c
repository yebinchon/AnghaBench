
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int refcnt; } ;


 int WARN_ON (int) ;
 scalar_t__ atomic_sub_return (int,int *) ;

void bpf_prog_sub(struct bpf_prog *prog, int i)
{





 WARN_ON(atomic_sub_return(i, &prog->aux->refcnt) == 0);
}
