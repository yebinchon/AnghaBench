
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgid_iter {int tgid; int * task; } ;
struct pid_namespace {int proc_thread_self; int proc_self; } ;
struct inode {int i_ino; } ;
struct file {int dummy; } ;
struct dir_context {scalar_t__ pos; } ;
typedef int name ;
typedef scalar_t__ loff_t ;


 int DT_LNK ;
 int HIDEPID_INVISIBLE ;
 scalar_t__ PID_MAX_LIMIT ;
 int TGID_OFFSET ;
 int cond_resched () ;
 struct inode* d_inode (int ) ;
 int dir_emit (struct dir_context*,char*,int,int ,int ) ;
 int file_inode (struct file*) ;
 int has_pid_permissions (struct pid_namespace*,int *,int ) ;
 struct tgid_iter next_tgid (struct pid_namespace*,struct tgid_iter) ;
 int proc_fill_cache (struct file*,struct dir_context*,char*,unsigned int,int ,int *,int *) ;
 int proc_pid_instantiate ;
 struct pid_namespace* proc_pid_ns (int ) ;
 int put_task_struct (int *) ;
 unsigned int snprintf (char*,int,char*,int) ;

int proc_pid_readdir(struct file *file, struct dir_context *ctx)
{
 struct tgid_iter iter;
 struct pid_namespace *ns = proc_pid_ns(file_inode(file));
 loff_t pos = ctx->pos;

 if (pos >= PID_MAX_LIMIT + TGID_OFFSET)
  return 0;

 if (pos == TGID_OFFSET - 2) {
  struct inode *inode = d_inode(ns->proc_self);
  if (!dir_emit(ctx, "self", 4, inode->i_ino, DT_LNK))
   return 0;
  ctx->pos = pos = pos + 1;
 }
 if (pos == TGID_OFFSET - 1) {
  struct inode *inode = d_inode(ns->proc_thread_self);
  if (!dir_emit(ctx, "thread-self", 11, inode->i_ino, DT_LNK))
   return 0;
  ctx->pos = pos = pos + 1;
 }
 iter.tgid = pos - TGID_OFFSET;
 iter.task = ((void*)0);
 for (iter = next_tgid(ns, iter);
      iter.task;
      iter.tgid += 1, iter = next_tgid(ns, iter)) {
  char name[10 + 1];
  unsigned int len;

  cond_resched();
  if (!has_pid_permissions(ns, iter.task, HIDEPID_INVISIBLE))
   continue;

  len = snprintf(name, sizeof(name), "%u", iter.tgid);
  ctx->pos = iter.tgid + TGID_OFFSET;
  if (!proc_fill_cache(file, ctx, name, len,
         proc_pid_instantiate, iter.task, ((void*)0))) {
   put_task_struct(iter.task);
   return 0;
  }
 }
 ctx->pos = PID_MAX_LIMIT + TGID_OFFSET;
 return 0;
}
