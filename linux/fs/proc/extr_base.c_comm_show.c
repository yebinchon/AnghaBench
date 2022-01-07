
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct seq_file {struct inode* private; } ;
struct inode {int dummy; } ;


 int ESRCH ;
 struct task_struct* get_proc_task (struct inode*) ;
 int proc_task_name (struct seq_file*,struct task_struct*,int) ;
 int put_task_struct (struct task_struct*) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int comm_show(struct seq_file *m, void *v)
{
 struct inode *inode = m->private;
 struct task_struct *p;

 p = get_proc_task(inode);
 if (!p)
  return -ESRCH;

 proc_task_name(m, p, 0);
 seq_putc(m, '\n');

 put_task_struct(p);

 return 0;
}
