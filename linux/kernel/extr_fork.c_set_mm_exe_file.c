
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int exe_file; } ;
struct file {int dummy; } ;


 int fput (struct file*) ;
 int get_file (struct file*) ;
 int rcu_assign_pointer (int ,struct file*) ;
 struct file* rcu_dereference_raw (int ) ;

void set_mm_exe_file(struct mm_struct *mm, struct file *new_exe_file)
{
 struct file *old_exe_file;






 old_exe_file = rcu_dereference_raw(mm->exe_file);

 if (new_exe_file)
  get_file(new_exe_file);
 rcu_assign_pointer(mm->exe_file, new_exe_file);
 if (old_exe_file)
  fput(old_exe_file);
}
