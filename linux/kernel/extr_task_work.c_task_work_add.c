
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int task_works; } ;
struct callback_head {struct callback_head* next; } ;


 int ESRCH ;
 struct callback_head* READ_ONCE (int ) ;
 struct callback_head* cmpxchg (int *,struct callback_head*,struct callback_head*) ;
 int set_notify_resume (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 struct callback_head work_exited ;

int
task_work_add(struct task_struct *task, struct callback_head *work, bool notify)
{
 struct callback_head *head;

 do {
  head = READ_ONCE(task->task_works);
  if (unlikely(head == &work_exited))
   return -ESRCH;
  work->next = head;
 } while (cmpxchg(&task->task_works, head, work) != head);

 if (notify)
  set_notify_resume(task);
 return 0;
}
