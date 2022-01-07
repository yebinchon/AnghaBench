
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid_entry {int len; int name; } ;
struct file {int dummy; } ;
struct dir_context {unsigned int pos; } ;


 int ENOENT ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 int file_inode (struct file*) ;
 struct task_struct* get_proc_task (int ) ;
 int proc_fill_cache (struct file*,struct dir_context*,int ,int ,int ,struct task_struct*,struct pid_entry const*) ;
 int proc_pident_instantiate ;
 int put_task_struct (struct task_struct*) ;

__attribute__((used)) static int proc_pident_readdir(struct file *file, struct dir_context *ctx,
  const struct pid_entry *ents, unsigned int nents)
{
 struct task_struct *task = get_proc_task(file_inode(file));
 const struct pid_entry *p;

 if (!task)
  return -ENOENT;

 if (!dir_emit_dots(file, ctx))
  goto out;

 if (ctx->pos >= nents + 2)
  goto out;

 for (p = ents + (ctx->pos - 2); p < ents + nents; p++) {
  if (!proc_fill_cache(file, ctx, p->name, p->len,
    proc_pident_instantiate, task, p))
   break;
  ctx->pos++;
 }
out:
 put_task_struct(task);
 return 0;
}
