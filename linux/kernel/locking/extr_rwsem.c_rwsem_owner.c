
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rw_semaphore {int owner; } ;


 int RWSEM_OWNER_FLAGS_MASK ;
 int atomic_long_read (int *) ;

__attribute__((used)) static inline struct task_struct *rwsem_owner(struct rw_semaphore *sem)
{
 return (struct task_struct *)
  (atomic_long_read(&sem->owner) & ~RWSEM_OWNER_FLAGS_MASK);
}
