
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; void* btfs; void* infos; } ;
struct perf_env {TYPE_1__ bpf_progs; } ;


 void* RB_ROOT ;
 int init_rwsem (int *) ;

void perf_env__init(struct perf_env *env)
{
 env->bpf_progs.infos = RB_ROOT;
 env->bpf_progs.btfs = RB_ROOT;
 init_rwsem(&env->bpf_progs.lock);
}
