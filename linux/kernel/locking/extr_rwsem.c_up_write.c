
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dep_map; } ;


 int _RET_IP_ ;
 int __up_write (struct rw_semaphore*) ;
 int rwsem_release (int *,int,int ) ;

void up_write(struct rw_semaphore *sem)
{
 rwsem_release(&sem->dep_map, 1, _RET_IP_);
 __up_write(sem);
}
