
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct mm_struct* mm; } ;
struct mm_struct {int mmap_sem; int core_state; } ;
struct core_thread {struct core_thread* next; int task; } ;
struct TYPE_2__ {struct core_thread* next; struct task_struct* task; } ;
struct core_state {TYPE_1__ dumper; int startup; } ;


 int EBUSY ;
 int EINTR ;
 struct task_struct* current ;
 scalar_t__ down_write_killable (int *) ;
 int freezer_count () ;
 int freezer_do_not_count () ;
 int init_completion (int *) ;
 int up_write (int *) ;
 int wait_for_completion (int *) ;
 int wait_task_inactive (int ,int ) ;
 int zap_threads (struct task_struct*,struct mm_struct*,struct core_state*,int) ;

__attribute__((used)) static int coredump_wait(int exit_code, struct core_state *core_state)
{
 struct task_struct *tsk = current;
 struct mm_struct *mm = tsk->mm;
 int core_waiters = -EBUSY;

 init_completion(&core_state->startup);
 core_state->dumper.task = tsk;
 core_state->dumper.next = ((void*)0);

 if (down_write_killable(&mm->mmap_sem))
  return -EINTR;

 if (!mm->core_state)
  core_waiters = zap_threads(tsk, mm, core_state, exit_code);
 up_write(&mm->mmap_sem);

 if (core_waiters > 0) {
  struct core_thread *ptr;

  freezer_do_not_count();
  wait_for_completion(&core_state->startup);
  freezer_count();





  ptr = core_state->dumper.next;
  while (ptr != ((void*)0)) {
   wait_task_inactive(ptr->task, 0);
   ptr = ptr->next;
  }
 }

 return core_waiters;
}
