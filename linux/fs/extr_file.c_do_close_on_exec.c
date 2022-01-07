
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_struct {int file_lock; } ;
struct file {int dummy; } ;
struct fdtable {unsigned int max_fds; unsigned long* close_on_exec; struct file** fd; } ;


 unsigned int BITS_PER_LONG ;
 int __put_unused_fd (struct files_struct*,unsigned int) ;
 int cond_resched () ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int filp_close (struct file*,struct files_struct*) ;
 int rcu_assign_pointer (struct file*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void do_close_on_exec(struct files_struct *files)
{
 unsigned i;
 struct fdtable *fdt;


 spin_lock(&files->file_lock);
 for (i = 0; ; i++) {
  unsigned long set;
  unsigned fd = i * BITS_PER_LONG;
  fdt = files_fdtable(files);
  if (fd >= fdt->max_fds)
   break;
  set = fdt->close_on_exec[i];
  if (!set)
   continue;
  fdt->close_on_exec[i] = 0;
  for ( ; set ; fd++, set >>= 1) {
   struct file *file;
   if (!(set & 1))
    continue;
   file = fdt->fd[fd];
   if (!file)
    continue;
   rcu_assign_pointer(fdt->fd[fd], ((void*)0));
   __put_unused_fd(files, fd);
   spin_unlock(&files->file_lock);
   filp_close(file, files);
   cond_resched();
   spin_lock(&files->file_lock);
  }

 }
 spin_unlock(&files->file_lock);
}
