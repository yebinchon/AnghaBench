
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int prio; int comm; } ;


 int printk (char*,...) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static void printk_task(struct task_struct *p)
{
 if (p)
  printk("%16s:%5d [%p, %3d]", p->comm, task_pid_nr(p), p, p->prio);
 else
  printk("<none>");
}
