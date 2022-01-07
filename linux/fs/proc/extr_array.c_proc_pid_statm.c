
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct seq_file {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct pid {int dummy; } ;
struct mm_struct {int dummy; } ;


 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int seq_put_decimal_ull (struct seq_file*,char*,unsigned long) ;
 int seq_putc (struct seq_file*,char) ;
 unsigned long task_statm (struct mm_struct*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;

int proc_pid_statm(struct seq_file *m, struct pid_namespace *ns,
   struct pid *pid, struct task_struct *task)
{
 unsigned long size = 0, resident = 0, shared = 0, text = 0, data = 0;
 struct mm_struct *mm = get_task_mm(task);

 if (mm) {
  size = task_statm(mm, &shared, &text, &data, &resident);
  mmput(mm);
 }






 seq_put_decimal_ull(m, "", size);
 seq_put_decimal_ull(m, " ", resident);
 seq_put_decimal_ull(m, " ", shared);
 seq_put_decimal_ull(m, " ", text);
 seq_put_decimal_ull(m, " ", 0);
 seq_put_decimal_ull(m, " ", data);
 seq_put_decimal_ull(m, " ", 0);
 seq_putc(m, '\n');

 return 0;
}
