
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int ppid; } ;
struct task {int children; int list; struct thread* thread; } ;
struct machine {int dummy; } ;


 int ENOENT ;
 struct task* ERR_PTR (int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 struct thread* machine__find_thread (struct machine*,int,int) ;
 struct task* thread__priv (struct thread*) ;

__attribute__((used)) static struct task *tasks_list(struct task *task, struct machine *machine)
{
 struct thread *parent_thread, *thread = task->thread;
 struct task *parent_task;


 if (!list_empty(&task->list))
  return ((void*)0);


 if (thread->ppid == -1)
  return task;

 parent_thread = machine__find_thread(machine, -1, thread->ppid);
 if (!parent_thread)
  return ERR_PTR(-ENOENT);

 parent_task = thread__priv(parent_thread);
 list_add_tail(&task->list, &parent_task->children);
 return tasks_list(parent_task, machine);
}
