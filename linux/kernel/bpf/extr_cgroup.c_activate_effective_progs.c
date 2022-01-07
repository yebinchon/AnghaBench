
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * effective; } ;
struct cgroup {TYPE_1__ bpf; } ;
struct bpf_prog_array {int dummy; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int bpf_prog_array_free (struct bpf_prog_array*) ;
 int cgroup_mutex ;
 int lockdep_is_held (int *) ;
 int rcu_swap_protected (int ,struct bpf_prog_array*,int ) ;

__attribute__((used)) static void activate_effective_progs(struct cgroup *cgrp,
         enum bpf_attach_type type,
         struct bpf_prog_array *old_array)
{
 rcu_swap_protected(cgrp->bpf.effective[type], old_array,
      lockdep_is_held(&cgroup_mutex));



 bpf_prog_array_free(old_array);
}
