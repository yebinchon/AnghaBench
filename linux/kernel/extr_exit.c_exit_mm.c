
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mm_struct {int mmap_sem; struct core_state* core_state; } ;
struct core_thread {TYPE_2__* task; int next; } ;
struct TYPE_7__ {int next; } ;
struct core_state {int startup; int nr_threads; TYPE_1__ dumper; } ;
struct TYPE_8__ {struct mm_struct* mm; struct mm_struct* active_mm; } ;


 int BUG_ON (int) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int TIF_MEMDIE ;
 int __set_current_state (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 TYPE_2__* current ;
 int down_read (int *) ;
 int enter_lazy_tlb (struct mm_struct*,TYPE_2__*) ;
 int exit_oom_victim () ;
 int freezable_schedule () ;
 int mm_release (TYPE_2__*,struct mm_struct*) ;
 int mm_update_next_owner (struct mm_struct*) ;
 int mmgrab (struct mm_struct*) ;
 int mmput (struct mm_struct*) ;
 int set_current_state (int ) ;
 int sync_mm_rss (struct mm_struct*) ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;
 scalar_t__ test_thread_flag (int ) ;
 int up_read (int *) ;
 int xchg (int *,struct core_thread*) ;

__attribute__((used)) static void exit_mm(void)
{
 struct mm_struct *mm = current->mm;
 struct core_state *core_state;

 mm_release(current, mm);
 if (!mm)
  return;
 sync_mm_rss(mm);







 down_read(&mm->mmap_sem);
 core_state = mm->core_state;
 if (core_state) {
  struct core_thread self;

  up_read(&mm->mmap_sem);

  self.task = current;
  self.next = xchg(&core_state->dumper.next, &self);




  if (atomic_dec_and_test(&core_state->nr_threads))
   complete(&core_state->startup);

  for (;;) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   if (!self.task)
    break;
   freezable_schedule();
  }
  __set_current_state(TASK_RUNNING);
  down_read(&mm->mmap_sem);
 }
 mmgrab(mm);
 BUG_ON(mm != current->active_mm);

 task_lock(current);
 current->mm = ((void*)0);
 up_read(&mm->mmap_sem);
 enter_lazy_tlb(mm, current);
 task_unlock(current);
 mm_update_next_owner(mm);
 mmput(mm);
 if (test_thread_flag(TIF_MEMDIE))
  exit_oom_victim();
}
