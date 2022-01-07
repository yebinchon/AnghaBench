
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct seq_file {int private; } ;
struct files_struct {int file_lock; } ;
struct TYPE_4__ {int mnt; } ;
struct file {int f_flags; TYPE_2__* f_op; TYPE_1__ f_path; scalar_t__ f_pos; } ;
struct fdtable {int dummy; } ;
struct TYPE_6__ {int mnt_id; } ;
struct TYPE_5__ {int (* show_fdinfo ) (struct seq_file*,struct file*) ;} ;


 int ENOENT ;
 int O_CLOEXEC ;
 scalar_t__ close_on_exec (unsigned int,struct fdtable*) ;
 struct file* fcheck_files (struct files_struct*,unsigned int) ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int fput (struct file*) ;
 int get_file (struct file*) ;
 struct files_struct* get_files_struct (struct task_struct*) ;
 struct task_struct* get_proc_task (int ) ;
 unsigned int proc_fd (int ) ;
 int put_files_struct (struct files_struct*) ;
 int put_task_struct (struct task_struct*) ;
 TYPE_3__* real_mount (int ) ;
 scalar_t__ seq_has_overflowed (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,long long,int,int ) ;
 int show_fd_locks (struct seq_file*,struct file*,struct files_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct seq_file*,struct file*) ;

__attribute__((used)) static int seq_show(struct seq_file *m, void *v)
{
 struct files_struct *files = ((void*)0);
 int f_flags = 0, ret = -ENOENT;
 struct file *file = ((void*)0);
 struct task_struct *task;

 task = get_proc_task(m->private);
 if (!task)
  return -ENOENT;

 files = get_files_struct(task);
 put_task_struct(task);

 if (files) {
  unsigned int fd = proc_fd(m->private);

  spin_lock(&files->file_lock);
  file = fcheck_files(files, fd);
  if (file) {
   struct fdtable *fdt = files_fdtable(files);

   f_flags = file->f_flags;
   if (close_on_exec(fd, fdt))
    f_flags |= O_CLOEXEC;

   get_file(file);
   ret = 0;
  }
  spin_unlock(&files->file_lock);
  put_files_struct(files);
 }

 if (ret)
  return ret;

 seq_printf(m, "pos:\t%lli\nflags:\t0%o\nmnt_id:\t%i\n",
     (long long)file->f_pos, f_flags,
     real_mount(file->f_path.mnt)->mnt_id);

 show_fd_locks(m, file, files);
 if (seq_has_overflowed(m))
  goto out;

 if (file->f_op->show_fdinfo)
  file->f_op->show_fdinfo(m, file);

out:
 fput(file);
 return 0;
}
