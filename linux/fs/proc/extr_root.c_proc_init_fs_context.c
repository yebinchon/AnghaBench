
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_fs_context {TYPE_1__* pid_ns; } ;
struct fs_context {int * ops; struct proc_fs_context* fs_private; int user_ns; } ;
struct TYPE_2__ {int user_ns; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int current ;
 TYPE_1__* get_pid_ns (int ) ;
 int get_user_ns (int ) ;
 struct proc_fs_context* kzalloc (int,int ) ;
 int proc_fs_context_ops ;
 int put_user_ns (int ) ;
 int task_active_pid_ns (int ) ;

__attribute__((used)) static int proc_init_fs_context(struct fs_context *fc)
{
 struct proc_fs_context *ctx;

 ctx = kzalloc(sizeof(struct proc_fs_context), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->pid_ns = get_pid_ns(task_active_pid_ns(current));
 put_user_ns(fc->user_ns);
 fc->user_ns = get_user_ns(ctx->pid_ns->user_ns);
 fc->fs_private = ctx;
 fc->ops = &proc_fs_context_ops;
 return 0;
}
