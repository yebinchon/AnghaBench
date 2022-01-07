
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_context {struct dentry* root; int * fs_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_4__ {int new_sb_created; int magic; int root; } ;
struct cgroup_fs_context {TYPE_3__* root; TYPE_1__ kfc; TYPE_2__* ns; } ;
struct cgroup {int kn; } ;
struct TYPE_6__ {int cgrp; int kf_root; } ;
struct TYPE_5__ {int root_cset; } ;


 int CGROUP2_SUPER_MAGIC ;
 int CGROUP_SUPER_MAGIC ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int cgroup2_fs_type ;
 struct cgroup_fs_context* cgroup_fc2context (struct fs_context*) ;
 int cgroup_mutex ;
 int cgroup_put (int *) ;
 struct cgroup* cset_cgroup_from_root (int ,TYPE_3__*) ;
 int css_set_lock ;
 int deactivate_locked_super (struct super_block*) ;
 int dput (struct dentry*) ;
 TYPE_2__ init_cgroup_ns ;
 int kernfs_get_tree (struct fs_context*) ;
 struct dentry* kernfs_node_dentry (int ,struct super_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int cgroup_do_get_tree(struct fs_context *fc)
{
 struct cgroup_fs_context *ctx = cgroup_fc2context(fc);
 int ret;

 ctx->kfc.root = ctx->root->kf_root;
 if (fc->fs_type == &cgroup2_fs_type)
  ctx->kfc.magic = CGROUP2_SUPER_MAGIC;
 else
  ctx->kfc.magic = CGROUP_SUPER_MAGIC;
 ret = kernfs_get_tree(fc);





 if (!ret && ctx->ns != &init_cgroup_ns) {
  struct dentry *nsdentry;
  struct super_block *sb = fc->root->d_sb;
  struct cgroup *cgrp;

  mutex_lock(&cgroup_mutex);
  spin_lock_irq(&css_set_lock);

  cgrp = cset_cgroup_from_root(ctx->ns->root_cset, ctx->root);

  spin_unlock_irq(&css_set_lock);
  mutex_unlock(&cgroup_mutex);

  nsdentry = kernfs_node_dentry(cgrp->kn, sb);
  dput(fc->root);
  fc->root = nsdentry;
  if (IS_ERR(nsdentry)) {
   ret = PTR_ERR(nsdentry);
   deactivate_locked_super(sb);
  }
 }

 if (!ctx->kfc.new_sb_created)
  cgroup_put(&ctx->root->cgrp);

 return ret;
}
