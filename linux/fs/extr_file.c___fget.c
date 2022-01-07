
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int dummy; } ;
struct file {int f_mode; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct files_struct* files; } ;


 TYPE_1__* current ;
 struct file* fcheck_files (struct files_struct*,unsigned int) ;
 int get_file_rcu_many (struct file*,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct file *__fget(unsigned int fd, fmode_t mask, unsigned int refs)
{
 struct files_struct *files = current->files;
 struct file *file;

 rcu_read_lock();
loop:
 file = fcheck_files(files, fd);
 if (file) {




  if (file->f_mode & mask)
   file = ((void*)0);
  else if (!get_file_rcu_many(file, refs))
   goto loop;
 }
 rcu_read_unlock();

 return file;
}
