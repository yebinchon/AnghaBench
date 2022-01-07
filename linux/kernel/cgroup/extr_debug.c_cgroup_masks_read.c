
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_open_file {int kn; } ;
struct cgroup {int subtree_ss_mask; int subtree_control; } ;


 int ENODEV ;
 struct cgroup* cgroup_kn_lock_live (int ,int) ;
 int cgroup_kn_unlock (int ) ;
 int cgroup_masks_read_one (struct seq_file*,char*,int ) ;

__attribute__((used)) static int cgroup_masks_read(struct seq_file *seq, void *v)
{
 struct kernfs_open_file *of = seq->private;
 struct cgroup *cgrp;

 cgrp = cgroup_kn_lock_live(of->kn, 0);
 if (!cgrp)
  return -ENODEV;

 cgroup_masks_read_one(seq, "subtree_control", cgrp->subtree_control);
 cgroup_masks_read_one(seq, "subtree_ss_mask", cgrp->subtree_ss_mask);

 cgroup_kn_unlock(of->kn);
 return 0;
}
