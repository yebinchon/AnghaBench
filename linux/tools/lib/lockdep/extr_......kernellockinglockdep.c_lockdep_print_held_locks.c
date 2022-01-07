
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; scalar_t__ held_locks; int comm; int lockdep_depth; } ;


 int READ_ONCE (int ) ;
 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int print_lock (scalar_t__) ;
 int printk (char*,int,...) ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static void lockdep_print_held_locks(struct task_struct *p)
{
 int i, depth = READ_ONCE(p->lockdep_depth);

 if (!depth)
  printk("no locks held by %s/%d.\n", p->comm, task_pid_nr(p));
 else
  printk("%d lock%s held by %s/%d:\n", depth,
         depth > 1 ? "s" : "", p->comm, task_pid_nr(p));




 if (p->state == TASK_RUNNING && p != current)
  return;
 for (i = 0; i < depth; i++) {
  printk(" #%d: ", i);
  print_lock(p->held_locks + i);
 }
}
