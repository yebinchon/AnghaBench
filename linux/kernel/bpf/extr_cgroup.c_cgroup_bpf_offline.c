
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcnt; } ;
struct cgroup {TYPE_1__ bpf; } ;


 int cgroup_get (struct cgroup*) ;
 int percpu_ref_kill (int *) ;

void cgroup_bpf_offline(struct cgroup *cgrp)
{
 cgroup_get(cgrp);
 percpu_ref_kill(&cgrp->bpf.refcnt);
}
