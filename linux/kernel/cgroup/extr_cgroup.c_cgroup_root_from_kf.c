
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kernfs_root {TYPE_1__* kn; } ;
struct cgroup_root {int dummy; } ;
struct cgroup {struct cgroup_root* root; } ;
struct TYPE_2__ {struct cgroup* priv; } ;



struct cgroup_root *cgroup_root_from_kf(struct kernfs_root *kf_root)
{
 struct cgroup *root_cgrp = kf_root->kn->priv;

 return root_cgrp->root;
}
