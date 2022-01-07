
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * effective; } ;
struct cgroup {TYPE_1__ bpf; } ;
struct bpf_cgroup_dev_ctx {short access_type; int minor; int major; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_PROG_RUN ;
 int BPF_PROG_RUN_ARRAY (int ,struct bpf_cgroup_dev_ctx*,int ) ;
 int current ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct cgroup* task_dfl_cgroup (int ) ;

int __cgroup_bpf_check_dev_permission(short dev_type, u32 major, u32 minor,
          short access, enum bpf_attach_type type)
{
 struct cgroup *cgrp;
 struct bpf_cgroup_dev_ctx ctx = {
  .access_type = (access << 16) | dev_type,
  .major = major,
  .minor = minor,
 };
 int allow = 1;

 rcu_read_lock();
 cgrp = task_dfl_cgroup(current);
 allow = BPF_PROG_RUN_ARRAY(cgrp->bpf.effective[type], &ctx,
       BPF_PROG_RUN);
 rcu_read_unlock();

 return !allow;
}
