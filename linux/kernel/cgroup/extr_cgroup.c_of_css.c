
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernfs_open_file {TYPE_2__* kn; } ;
struct cgroup_subsys_state {int dummy; } ;
struct cgroup {struct cgroup_subsys_state self; int * subsys; } ;
struct cftype {TYPE_3__* ss; } ;
struct TYPE_6__ {size_t id; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {struct cgroup* priv; } ;


 struct cftype* of_cft (struct kernfs_open_file*) ;
 struct cgroup_subsys_state* rcu_dereference_raw (int ) ;

struct cgroup_subsys_state *of_css(struct kernfs_open_file *of)
{
 struct cgroup *cgrp = of->kn->parent->priv;
 struct cftype *cft = of_cft(of);
 if (cft->ss)
  return rcu_dereference_raw(cgrp->subsys[cft->ss->id]);
 else
  return &cgrp->self;
}
