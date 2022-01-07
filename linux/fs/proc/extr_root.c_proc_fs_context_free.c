
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_fs_context {int pid_ns; } ;
struct fs_context {struct proc_fs_context* fs_private; } ;


 int kfree (struct proc_fs_context*) ;
 int put_pid_ns (int ) ;

__attribute__((used)) static void proc_fs_context_free(struct fs_context *fc)
{
 struct proc_fs_context *ctx = fc->fs_private;

 put_pid_ns(ctx->pid_ns);
 kfree(ctx);
}
