
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int wait_list; int count; int wait_lock; } ;
typedef enum writer_wait_state { ____Placeholder_writer_wait_state } writer_wait_state ;


 long RWSEM_FLAG_HANDOFF ;
 long RWSEM_FLAG_WAITERS ;
 long RWSEM_LOCK_MASK ;
 long RWSEM_WRITER_LOCKED ;
 int WRITER_HANDOFF ;
 int WRITER_NOT_FIRST ;
 long atomic_long_read (int *) ;
 int atomic_long_try_cmpxchg_acquire (int *,long*,long) ;
 scalar_t__ list_is_singular (int *) ;
 int lockdep_assert_held (int *) ;
 int rwsem_set_owner (struct rw_semaphore*) ;

__attribute__((used)) static inline bool rwsem_try_write_lock(struct rw_semaphore *sem,
     enum writer_wait_state wstate)
{
 long count, new;

 lockdep_assert_held(&sem->wait_lock);

 count = atomic_long_read(&sem->count);
 do {
  bool has_handoff = !!(count & RWSEM_FLAG_HANDOFF);

  if (has_handoff && wstate == WRITER_NOT_FIRST)
   return 0;

  new = count;

  if (count & RWSEM_LOCK_MASK) {
   if (has_handoff || (wstate != WRITER_HANDOFF))
    return 0;

   new |= RWSEM_FLAG_HANDOFF;
  } else {
   new |= RWSEM_WRITER_LOCKED;
   new &= ~RWSEM_FLAG_HANDOFF;

   if (list_is_singular(&sem->wait_list))
    new &= ~RWSEM_FLAG_WAITERS;
  }
 } while (!atomic_long_try_cmpxchg_acquire(&sem->count, &count, new));





 if (new & RWSEM_FLAG_HANDOFF)
  return 0;

 rwsem_set_owner(sem);
 return 1;
}
