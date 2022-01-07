
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct mm_struct {TYPE_4__* core_state; } ;
struct core_thread {struct task_struct* task; struct core_thread* next; } ;
struct TYPE_11__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_9__ {struct core_thread* next; } ;
struct TYPE_10__ {TYPE_3__ dumper; } ;
struct TYPE_8__ {int siglock; } ;
struct TYPE_7__ {int group_exit_code; int flags; int * group_exit_task; } ;


 int SIGNAL_GROUP_EXIT ;
 int __fatal_signal_pending (TYPE_5__*) ;
 TYPE_5__* current ;
 int smp_mb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void coredump_finish(struct mm_struct *mm, bool core_dumped)
{
 struct core_thread *curr, *next;
 struct task_struct *task;

 spin_lock_irq(&current->sighand->siglock);
 if (core_dumped && !__fatal_signal_pending(current))
  current->signal->group_exit_code |= 0x80;
 current->signal->group_exit_task = ((void*)0);
 current->signal->flags = SIGNAL_GROUP_EXIT;
 spin_unlock_irq(&current->sighand->siglock);

 next = mm->core_state->dumper.next;
 while ((curr = next) != ((void*)0)) {
  next = curr->next;
  task = curr->task;




  smp_mb();
  curr->task = ((void*)0);
  wake_up_process(task);
 }

 mm->core_state = ((void*)0);
}
