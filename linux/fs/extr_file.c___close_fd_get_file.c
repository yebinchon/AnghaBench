
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int file_lock; } ;
struct file {int dummy; } ;
struct fdtable {unsigned int max_fds; struct file** fd; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int ENOENT ;
 int __put_unused_fd (struct files_struct*,unsigned int) ;
 TYPE_1__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int filp_close (struct file*,struct files_struct*) ;
 int get_file (struct file*) ;
 int rcu_assign_pointer (struct file*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __close_fd_get_file(unsigned int fd, struct file **res)
{
 struct files_struct *files = current->files;
 struct file *file;
 struct fdtable *fdt;

 spin_lock(&files->file_lock);
 fdt = files_fdtable(files);
 if (fd >= fdt->max_fds)
  goto out_unlock;
 file = fdt->fd[fd];
 if (!file)
  goto out_unlock;
 rcu_assign_pointer(fdt->fd[fd], ((void*)0));
 __put_unused_fd(files, fd);
 spin_unlock(&files->file_lock);
 get_file(file);
 *res = file;
 return filp_close(file, files);

out_unlock:
 spin_unlock(&files->file_lock);
 *res = ((void*)0);
 return -ENOENT;
}
