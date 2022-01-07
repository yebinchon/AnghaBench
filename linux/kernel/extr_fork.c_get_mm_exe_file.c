
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int exe_file; } ;
struct file {int dummy; } ;


 int get_file_rcu (struct file*) ;
 struct file* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct file *get_mm_exe_file(struct mm_struct *mm)
{
 struct file *exe_file;

 rcu_read_lock();
 exe_file = rcu_dereference(mm->exe_file);
 if (exe_file && !get_file_rcu(exe_file))
  exe_file = ((void*)0);
 rcu_read_unlock();
 return exe_file;
}
