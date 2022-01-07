
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;
struct cgroup_fs_context {int ns; struct cgroup_fs_context* release_agent; struct cgroup_fs_context* name; } ;


 struct cgroup_fs_context* cgroup_fc2context (struct fs_context*) ;
 int kernfs_free_fs_context (struct fs_context*) ;
 int kfree (struct cgroup_fs_context*) ;
 int put_cgroup_ns (int ) ;

__attribute__((used)) static void cgroup_fs_context_free(struct fs_context *fc)
{
 struct cgroup_fs_context *ctx = cgroup_fc2context(fc);

 kfree(ctx->name);
 kfree(ctx->release_agent);
 put_cgroup_ns(ctx->ns);
 kernfs_free_fs_context(fc);
 kfree(ctx);
}
