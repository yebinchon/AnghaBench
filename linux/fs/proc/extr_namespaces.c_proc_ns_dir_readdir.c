
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct proc_ns_operations {int name; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;


 int ARRAY_SIZE (struct proc_ns_operations**) ;
 int ENOENT ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 int file_inode (struct file*) ;
 struct task_struct* get_proc_task (int ) ;
 struct proc_ns_operations** ns_entries ;
 int proc_fill_cache (struct file*,struct dir_context*,int ,int ,int ,struct task_struct*,struct proc_ns_operations const*) ;
 int proc_ns_instantiate ;
 int put_task_struct (struct task_struct*) ;
 int strlen (int ) ;

__attribute__((used)) static int proc_ns_dir_readdir(struct file *file, struct dir_context *ctx)
{
 struct task_struct *task = get_proc_task(file_inode(file));
 const struct proc_ns_operations **entry, **last;

 if (!task)
  return -ENOENT;

 if (!dir_emit_dots(file, ctx))
  goto out;
 if (ctx->pos >= 2 + ARRAY_SIZE(ns_entries))
  goto out;
 entry = ns_entries + (ctx->pos - 2);
 last = &ns_entries[ARRAY_SIZE(ns_entries) - 1];
 while (entry <= last) {
  const struct proc_ns_operations *ops = *entry;
  if (!proc_fill_cache(file, ctx, ops->name, strlen(ops->name),
         proc_ns_instantiate, task, ops))
   break;
  ctx->pos++;
  entry++;
 }
out:
 put_task_struct(task);
 return 0;
}
