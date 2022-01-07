
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rw_semaphore {int owner; } ;


 unsigned long RWSEM_RD_NONSPINNABLE ;
 unsigned long RWSEM_READER_OWNED ;
 unsigned long atomic_long_read (int *) ;
 int atomic_long_set (int *,unsigned long) ;

__attribute__((used)) static inline void __rwsem_set_reader_owned(struct rw_semaphore *sem,
         struct task_struct *owner)
{
 unsigned long val = (unsigned long)owner | RWSEM_READER_OWNED |
  (atomic_long_read(&sem->owner) & RWSEM_RD_NONSPINNABLE);

 atomic_long_set(&sem->owner, val);
}
