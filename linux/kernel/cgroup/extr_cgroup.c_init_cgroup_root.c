
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int flags; struct cgroup_root* root; } ;
struct cgroup_root {struct cgroup cgrp; int name; int release_agent_path; int flags; int cgroup_idr; int nr_cgrps; int root_list; } ;
struct cgroup_fs_context {scalar_t__ cpuset_clone_children; int name; int release_agent; int flags; struct cgroup_root* root; } ;


 int CGRP_CPUSET_CLONE_CHILDREN ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_CGROUP_ROOT_NAMELEN ;
 int PATH_MAX ;
 int atomic_set (int *,int) ;
 int idr_init (int *) ;
 int init_cgroup_housekeeping (struct cgroup*) ;
 int set_bit (int ,int *) ;
 int strscpy (int ,int ,int ) ;

void init_cgroup_root(struct cgroup_fs_context *ctx)
{
 struct cgroup_root *root = ctx->root;
 struct cgroup *cgrp = &root->cgrp;

 INIT_LIST_HEAD(&root->root_list);
 atomic_set(&root->nr_cgrps, 1);
 cgrp->root = root;
 init_cgroup_housekeeping(cgrp);
 idr_init(&root->cgroup_idr);

 root->flags = ctx->flags;
 if (ctx->release_agent)
  strscpy(root->release_agent_path, ctx->release_agent, PATH_MAX);
 if (ctx->name)
  strscpy(root->name, ctx->name, MAX_CGROUP_ROOT_NAMELEN);
 if (ctx->cpuset_clone_children)
  set_bit(CGRP_CPUSET_CLONE_CHILDREN, &root->cgrp.flags);
}
