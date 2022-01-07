
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct files_struct {int dummy; } ;
struct file {int f_mode; } ;
typedef int fmode_t ;


 struct file* fcheck_files (struct files_struct*,unsigned int) ;
 struct files_struct* get_files_struct (struct task_struct*) ;
 int put_files_struct (struct files_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static bool tid_fd_mode(struct task_struct *task, unsigned fd, fmode_t *mode)
{
 struct files_struct *files = get_files_struct(task);
 struct file *file;

 if (!files)
  return 0;

 rcu_read_lock();
 file = fcheck_files(files, fd);
 if (file)
  *mode = file->f_mode;
 rcu_read_unlock();
 put_files_struct(files);
 return !!file;
}
