
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {int dummy; } ;
struct cgroup_fs_context {int flags; TYPE_1__* root; } ;
struct TYPE_2__ {int cgrp; } ;


 int apply_cgroup_root_flags (int ) ;
 int cgroup_do_get_tree (struct fs_context*) ;
 struct cgroup_fs_context* cgroup_fc2context (struct fs_context*) ;
 int cgroup_get_live (int *) ;
 TYPE_1__ cgrp_dfl_root ;
 int cgrp_dfl_visible ;

__attribute__((used)) static int cgroup_get_tree(struct fs_context *fc)
{
 struct cgroup_fs_context *ctx = cgroup_fc2context(fc);
 int ret;

 cgrp_dfl_visible = 1;
 cgroup_get_live(&cgrp_dfl_root.cgrp);
 ctx->root = &cgrp_dfl_root;

 ret = cgroup_do_get_tree(fc);
 if (!ret)
  apply_cgroup_root_flags(ctx->flags);
 return ret;
}
