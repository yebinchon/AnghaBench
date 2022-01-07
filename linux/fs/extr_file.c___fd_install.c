
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_struct {int fdt; int file_lock; int resize_in_progress; } ;
struct file {int dummy; } ;
struct fdtable {int ** fd; } ;


 int BUG_ON (int ) ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int rcu_assign_pointer (int *,struct file*) ;
 struct fdtable* rcu_dereference_sched (int ) ;
 int rcu_read_lock_sched () ;
 int rcu_read_unlock_sched () ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

void __fd_install(struct files_struct *files, unsigned int fd,
  struct file *file)
{
 struct fdtable *fdt;

 rcu_read_lock_sched();

 if (unlikely(files->resize_in_progress)) {
  rcu_read_unlock_sched();
  spin_lock(&files->file_lock);
  fdt = files_fdtable(files);
  BUG_ON(fdt->fd[fd] != ((void*)0));
  rcu_assign_pointer(fdt->fd[fd], file);
  spin_unlock(&files->file_lock);
  return;
 }

 smp_rmb();
 fdt = rcu_dereference_sched(files->fdt);
 BUG_ON(fdt->fd[fd] != ((void*)0));
 rcu_assign_pointer(fdt->fd[fd], file);
 rcu_read_unlock_sched();
}
