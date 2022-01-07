
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ f_version; } ;
struct dir_context {scalar_t__ pos; } ;
typedef int name ;


 int ENOENT ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 struct inode* file_inode (struct file*) ;
 struct task_struct* first_tid (int ,int,scalar_t__,struct pid_namespace*) ;
 struct task_struct* next_tid (struct task_struct*) ;
 int proc_fill_cache (struct file*,struct dir_context*,char*,unsigned int,int ,struct task_struct*,int *) ;
 scalar_t__ proc_inode_is_dead (struct inode*) ;
 int proc_pid (struct inode*) ;
 struct pid_namespace* proc_pid_ns (struct inode*) ;
 int proc_task_instantiate ;
 int put_task_struct (struct task_struct*) ;
 unsigned int snprintf (char*,int,char*,int) ;
 int task_pid_nr_ns (struct task_struct*,struct pid_namespace*) ;

__attribute__((used)) static int proc_task_readdir(struct file *file, struct dir_context *ctx)
{
 struct inode *inode = file_inode(file);
 struct task_struct *task;
 struct pid_namespace *ns;
 int tid;

 if (proc_inode_is_dead(inode))
  return -ENOENT;

 if (!dir_emit_dots(file, ctx))
  return 0;




 ns = proc_pid_ns(inode);
 tid = (int)file->f_version;
 file->f_version = 0;
 for (task = first_tid(proc_pid(inode), tid, ctx->pos - 2, ns);
      task;
      task = next_tid(task), ctx->pos++) {
  char name[10 + 1];
  unsigned int len;
  tid = task_pid_nr_ns(task, ns);
  len = snprintf(name, sizeof(name), "%u", tid);
  if (!proc_fill_cache(file, ctx, name, len,
    proc_task_instantiate, task, ((void*)0))) {


   file->f_version = (u64)tid;
   put_task_struct(task);
   break;
  }
 }

 return 0;
}
