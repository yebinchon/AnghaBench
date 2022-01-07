
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cgroup_root {int cgroup_idr; int nr_cgrps; } ;
struct TYPE_4__ {int refcnt; int children; int sibling; scalar_t__ serial_nr; struct TYPE_4__* parent; } ;
struct TYPE_3__ {int nr_frozen_descendants; scalar_t__ e_freeze; } ;
struct cgroup {int level; scalar_t__ id; scalar_t__* ancestor_ids; TYPE_2__ self; int subtree_control; int flags; TYPE_1__ freezer; int nr_descendants; struct cgroup_root* root; } ;


 int CGRP_CPUSET_CLONE_CHILDREN ;
 int CGRP_FREEZE ;
 int CGRP_FROZEN ;
 int CGRP_NOTIFY_ON_RELEASE ;
 int ENOMEM ;
 struct cgroup* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int ancestor_ids ;
 int atomic_inc (int *) ;
 int cgroup_bpf_inherit (struct cgroup*) ;
 int cgroup_control (struct cgroup*) ;
 int cgroup_get_live (struct cgroup*) ;
 scalar_t__ cgroup_idr_alloc (int *,int *,int,int ,int ) ;
 int cgroup_idr_remove (int *,scalar_t__) ;
 int cgroup_idr_replace (int *,struct cgroup*,scalar_t__) ;
 scalar_t__ cgroup_on_dfl (struct cgroup*) ;
 struct cgroup* cgroup_parent (struct cgroup*) ;
 int cgroup_propagate_control (struct cgroup*) ;
 int cgroup_rstat_exit (struct cgroup*) ;
 int cgroup_rstat_init (struct cgroup*) ;
 int css_release ;
 int css_serial_nr_next ;
 int css_set_lock ;
 int init_cgroup_housekeeping (struct cgroup*) ;
 int kfree (struct cgroup*) ;
 struct cgroup* kzalloc (int ,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ notify_on_release (struct cgroup*) ;
 int percpu_ref_exit (int *) ;
 int percpu_ref_init (int *,int ,int ,int ) ;
 int psi_cgroup_alloc (struct cgroup*) ;
 int psi_cgroup_free (struct cgroup*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int struct_size (struct cgroup*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct cgroup *cgroup_create(struct cgroup *parent)
{
 struct cgroup_root *root = parent->root;
 struct cgroup *cgrp, *tcgrp;
 int level = parent->level + 1;
 int ret;


 cgrp = kzalloc(struct_size(cgrp, ancestor_ids, (level + 1)),
         GFP_KERNEL);
 if (!cgrp)
  return ERR_PTR(-ENOMEM);

 ret = percpu_ref_init(&cgrp->self.refcnt, css_release, 0, GFP_KERNEL);
 if (ret)
  goto out_free_cgrp;

 if (cgroup_on_dfl(parent)) {
  ret = cgroup_rstat_init(cgrp);
  if (ret)
   goto out_cancel_ref;
 }





 cgrp->id = cgroup_idr_alloc(&root->cgroup_idr, ((void*)0), 2, 0, GFP_KERNEL);
 if (cgrp->id < 0) {
  ret = -ENOMEM;
  goto out_stat_exit;
 }

 init_cgroup_housekeeping(cgrp);

 cgrp->self.parent = &parent->self;
 cgrp->root = root;
 cgrp->level = level;

 ret = psi_cgroup_alloc(cgrp);
 if (ret)
  goto out_idr_free;

 ret = cgroup_bpf_inherit(cgrp);
 if (ret)
  goto out_psi_free;





 cgrp->freezer.e_freeze = parent->freezer.e_freeze;
 if (cgrp->freezer.e_freeze) {






  set_bit(CGRP_FREEZE, &cgrp->flags);
  set_bit(CGRP_FROZEN, &cgrp->flags);
 }

 spin_lock_irq(&css_set_lock);
 for (tcgrp = cgrp; tcgrp; tcgrp = cgroup_parent(tcgrp)) {
  cgrp->ancestor_ids[tcgrp->level] = tcgrp->id;

  if (tcgrp != cgrp) {
   tcgrp->nr_descendants++;






   if (cgrp->freezer.e_freeze)
    tcgrp->freezer.nr_frozen_descendants++;
  }
 }
 spin_unlock_irq(&css_set_lock);

 if (notify_on_release(parent))
  set_bit(CGRP_NOTIFY_ON_RELEASE, &cgrp->flags);

 if (test_bit(CGRP_CPUSET_CLONE_CHILDREN, &parent->flags))
  set_bit(CGRP_CPUSET_CLONE_CHILDREN, &cgrp->flags);

 cgrp->self.serial_nr = css_serial_nr_next++;


 list_add_tail_rcu(&cgrp->self.sibling, &cgroup_parent(cgrp)->self.children);
 atomic_inc(&root->nr_cgrps);
 cgroup_get_live(parent);





 cgroup_idr_replace(&root->cgroup_idr, cgrp, cgrp->id);





 if (!cgroup_on_dfl(cgrp))
  cgrp->subtree_control = cgroup_control(cgrp);

 cgroup_propagate_control(cgrp);

 return cgrp;

out_psi_free:
 psi_cgroup_free(cgrp);
out_idr_free:
 cgroup_idr_remove(&root->cgroup_idr, cgrp->id);
out_stat_exit:
 if (cgroup_on_dfl(parent))
  cgroup_rstat_exit(cgrp);
out_cancel_ref:
 percpu_ref_exit(&cgrp->self.refcnt);
out_free_cgrp:
 kfree(cgrp);
 return ERR_PTR(ret);
}
