
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_fs_context {int pid_ns; } ;
struct fs_context {struct proc_fs_context* fs_private; } ;


 int get_tree_keyed (struct fs_context*,int ,int ) ;
 int proc_fill_super ;

__attribute__((used)) static int proc_get_tree(struct fs_context *fc)
{
 struct proc_fs_context *ctx = fc->fs_private;

 return get_tree_keyed(fc, proc_fill_super, ctx->pid_ns);
}
