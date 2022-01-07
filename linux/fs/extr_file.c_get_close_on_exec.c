
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int dummy; } ;
struct fdtable {int dummy; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int close_on_exec (unsigned int,struct fdtable*) ;
 TYPE_1__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool get_close_on_exec(unsigned int fd)
{
 struct files_struct *files = current->files;
 struct fdtable *fdt;
 bool res;
 rcu_read_lock();
 fdt = files_fdtable(files);
 res = close_on_exec(fd, fdt);
 rcu_read_unlock();
 return res;
}
