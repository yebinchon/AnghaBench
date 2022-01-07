
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_node {TYPE_1__* parent; struct cgroup* priv; } ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup* priv; } ;


 scalar_t__ KERNFS_DIR ;
 int cgroup_mutex ;
 int cgroup_put (struct cgroup*) ;
 scalar_t__ kernfs_type (struct kernfs_node*) ;
 int kernfs_unbreak_active_protection (struct kernfs_node*) ;
 int mutex_unlock (int *) ;

void cgroup_kn_unlock(struct kernfs_node *kn)
{
 struct cgroup *cgrp;

 if (kernfs_type(kn) == KERNFS_DIR)
  cgrp = kn->priv;
 else
  cgrp = kn->parent->priv;

 mutex_unlock(&cgroup_mutex);

 kernfs_unbreak_active_protection(kn);
 cgroup_put(cgrp);
}
