
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int file_lock; } ;
struct fdtable {int dummy; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int __clear_close_on_exec (unsigned int,struct fdtable*) ;
 int __set_close_on_exec (unsigned int,struct fdtable*) ;
 TYPE_1__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void set_close_on_exec(unsigned int fd, int flag)
{
 struct files_struct *files = current->files;
 struct fdtable *fdt;
 spin_lock(&files->file_lock);
 fdt = files_fdtable(files);
 if (flag)
  __set_close_on_exec(fd, fdt);
 else
  __clear_close_on_exec(fd, fdt);
 spin_unlock(&files->file_lock);
}
