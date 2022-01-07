
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct super_block {int dummy; } ;
struct proc_fs_context {int mask; int hidepid; int gid; } ;
struct pid_namespace {int hide_pid; int pid_gid; } ;
struct fs_context {struct proc_fs_context* fs_private; } ;


 int Opt_gid ;
 int Opt_hidepid ;
 int make_kgid (struct user_namespace*,int ) ;

__attribute__((used)) static void proc_apply_options(struct super_block *s,
          struct fs_context *fc,
          struct pid_namespace *pid_ns,
          struct user_namespace *user_ns)
{
 struct proc_fs_context *ctx = fc->fs_private;

 if (ctx->mask & (1 << Opt_gid))
  pid_ns->pid_gid = make_kgid(user_ns, ctx->gid);
 if (ctx->mask & (1 << Opt_hidepid))
  pid_ns->hide_pid = ctx->hidepid;
}
