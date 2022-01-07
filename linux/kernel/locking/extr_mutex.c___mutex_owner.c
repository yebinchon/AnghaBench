
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mutex {int owner; } ;


 int MUTEX_FLAGS ;
 int atomic_long_read (int *) ;

__attribute__((used)) static inline struct task_struct *__mutex_owner(struct mutex *lock)
{
 return (struct task_struct *)(atomic_long_read(&lock->owner) & ~MUTEX_FLAGS);
}
