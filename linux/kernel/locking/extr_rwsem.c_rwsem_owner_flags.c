
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rw_semaphore {int owner; } ;


 unsigned long RWSEM_OWNER_FLAGS_MASK ;
 unsigned long atomic_long_read (int *) ;

__attribute__((used)) static inline struct task_struct *
rwsem_owner_flags(struct rw_semaphore *sem, unsigned long *pflags)
{
 unsigned long owner = atomic_long_read(&sem->owner);

 *pflags = owner & RWSEM_OWNER_FLAGS_MASK;
 return (struct task_struct *)(owner & ~RWSEM_OWNER_FLAGS_MASK);
}
