
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct fs_context {TYPE_5__* root; } ;
struct cgroup_fs_context {TYPE_4__* root; TYPE_1__* ns; } ;
struct TYPE_12__ {int cgrp; } ;
struct TYPE_11__ {struct super_block* d_sb; } ;
struct TYPE_8__ {int refcnt; } ;
struct TYPE_9__ {TYPE_2__ self; } ;
struct TYPE_10__ {TYPE_3__ cgrp; } ;
struct TYPE_7__ {int user_ns; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 int cgroup1_root_to_use (struct fs_context*) ;
 int cgroup_do_get_tree (struct fs_context*) ;
 struct cgroup_fs_context* cgroup_fc2context (struct fs_context*) ;
 int cgroup_lock_and_drain_offline (int *) ;
 int cgroup_mutex ;
 TYPE_6__ cgrp_dfl_root ;
 int deactivate_locked_super (struct super_block*) ;
 int dput (TYPE_5__*) ;
 int msleep (int) ;
 int mutex_unlock (int *) ;
 int ns_capable (int ,int ) ;
 scalar_t__ percpu_ref_is_dying (int *) ;
 int percpu_ref_tryget_live (int *) ;
 int restart_syscall () ;
 scalar_t__ unlikely (int) ;

int cgroup1_get_tree(struct fs_context *fc)
{
 struct cgroup_fs_context *ctx = cgroup_fc2context(fc);
 int ret;


 if (!ns_capable(ctx->ns->user_ns, CAP_SYS_ADMIN))
  return -EPERM;

 cgroup_lock_and_drain_offline(&cgrp_dfl_root.cgrp);

 ret = cgroup1_root_to_use(fc);
 if (!ret && !percpu_ref_tryget_live(&ctx->root->cgrp.self.refcnt))
  ret = 1;

 mutex_unlock(&cgroup_mutex);

 if (!ret)
  ret = cgroup_do_get_tree(fc);

 if (!ret && percpu_ref_is_dying(&ctx->root->cgrp.self.refcnt)) {
  struct super_block *sb = fc->root->d_sb;
  dput(fc->root);
  deactivate_locked_super(sb);
  ret = 1;
 }

 if (unlikely(ret > 0)) {
  msleep(10);
  return restart_syscall();
 }
 return ret;
}
