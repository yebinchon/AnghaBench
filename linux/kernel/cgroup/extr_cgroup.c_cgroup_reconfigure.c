
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;
struct cgroup_fs_context {int flags; } ;


 int apply_cgroup_root_flags (int ) ;
 struct cgroup_fs_context* cgroup_fc2context (struct fs_context*) ;

__attribute__((used)) static int cgroup_reconfigure(struct fs_context *fc)
{
 struct cgroup_fs_context *ctx = cgroup_fc2context(fc);

 apply_cgroup_root_flags(ctx->flags);
 return 0;
}
