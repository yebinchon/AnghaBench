
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mm_struct* mm; } ;
struct mm_struct {int membarrier_state; } ;


 int CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE ;
 int EINVAL ;
 int IS_ENABLED (int ) ;
 int MEMBARRIER_FLAG_SYNC_CORE ;
 int MEMBARRIER_STATE_PRIVATE_EXPEDITED ;
 int MEMBARRIER_STATE_PRIVATE_EXPEDITED_READY ;
 int MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE ;
 int MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE_READY ;
 int atomic_or (int,int *) ;
 int atomic_read (int *) ;
 struct task_struct* current ;
 int sync_runqueues_membarrier_state (struct mm_struct*) ;

__attribute__((used)) static int membarrier_register_private_expedited(int flags)
{
 struct task_struct *p = current;
 struct mm_struct *mm = p->mm;
 int ready_state = MEMBARRIER_STATE_PRIVATE_EXPEDITED_READY,
     set_state = MEMBARRIER_STATE_PRIVATE_EXPEDITED,
     ret;

 if (flags & MEMBARRIER_FLAG_SYNC_CORE) {
  if (!IS_ENABLED(CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE))
   return -EINVAL;
  ready_state =
   MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE_READY;
 }






 if ((atomic_read(&mm->membarrier_state) & ready_state) == ready_state)
  return 0;
 if (flags & MEMBARRIER_FLAG_SYNC_CORE)
  set_state |= MEMBARRIER_STATE_PRIVATE_EXPEDITED_SYNC_CORE;
 atomic_or(set_state, &mm->membarrier_state);
 ret = sync_runqueues_membarrier_state(mm);
 if (ret)
  return ret;
 atomic_or(ready_state, &mm->membarrier_state);

 return 0;
}
