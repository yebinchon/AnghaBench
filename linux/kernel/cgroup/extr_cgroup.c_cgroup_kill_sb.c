
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct kernfs_root {int dummy; } ;
struct TYPE_3__ {int refcnt; int children; } ;
struct TYPE_4__ {TYPE_1__ self; } ;
struct cgroup_root {TYPE_2__ cgrp; } ;


 int cgroup_put (TYPE_2__*) ;
 struct cgroup_root* cgroup_root_from_kf (struct kernfs_root*) ;
 struct cgroup_root cgrp_dfl_root ;
 int kernfs_kill_sb (struct super_block*) ;
 struct kernfs_root* kernfs_root_from_sb (struct super_block*) ;
 scalar_t__ list_empty (int *) ;
 int percpu_ref_is_dying (int *) ;
 int percpu_ref_kill (int *) ;

__attribute__((used)) static void cgroup_kill_sb(struct super_block *sb)
{
 struct kernfs_root *kf_root = kernfs_root_from_sb(sb);
 struct cgroup_root *root = cgroup_root_from_kf(kf_root);
 if (list_empty(&root->cgrp.self.children) && root != &cgrp_dfl_root &&
     !percpu_ref_is_dying(&root->cgrp.self.refcnt))
  percpu_ref_kill(&root->cgrp.self.refcnt);
 cgroup_put(&root->cgrp);
 kernfs_kill_sb(sb);
}
