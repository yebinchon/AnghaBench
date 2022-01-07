
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct files_struct {int dummy; } ;
struct file {int f_mode; } ;
struct fd_data {unsigned int fd; int mode; } ;
struct dir_context {int pos; } ;
typedef int name ;
typedef int instantiate_t ;
struct TYPE_2__ {unsigned int max_fds; } ;


 int ENOENT ;
 int cond_resched () ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 struct file* fcheck_files (struct files_struct*,unsigned int) ;
 int file_inode (struct file*) ;
 TYPE_1__* files_fdtable (struct files_struct*) ;
 struct files_struct* get_files_struct (struct task_struct*) ;
 struct task_struct* get_proc_task (int ) ;
 int proc_fill_cache (struct file*,struct dir_context*,char*,unsigned int,int ,struct task_struct*,struct fd_data*) ;
 int put_files_struct (struct files_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int proc_readfd_common(struct file *file, struct dir_context *ctx,
         instantiate_t instantiate)
{
 struct task_struct *p = get_proc_task(file_inode(file));
 struct files_struct *files;
 unsigned int fd;

 if (!p)
  return -ENOENT;

 if (!dir_emit_dots(file, ctx))
  goto out;
 files = get_files_struct(p);
 if (!files)
  goto out;

 rcu_read_lock();
 for (fd = ctx->pos - 2;
      fd < files_fdtable(files)->max_fds;
      fd++, ctx->pos++) {
  struct file *f;
  struct fd_data data;
  char name[10 + 1];
  unsigned int len;

  f = fcheck_files(files, fd);
  if (!f)
   continue;
  data.mode = f->f_mode;
  rcu_read_unlock();
  data.fd = fd;

  len = snprintf(name, sizeof(name), "%u", fd);
  if (!proc_fill_cache(file, ctx,
         name, len, instantiate, p,
         &data))
   goto out_fd_loop;
  cond_resched();
  rcu_read_lock();
 }
 rcu_read_unlock();
out_fd_loop:
 put_files_struct(files);
out:
 put_task_struct(p);
 return 0;
}
