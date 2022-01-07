
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rw_semaphore {int dep_map; } ;


 int _RET_IP_ ;
 int __downgrade_write (struct rw_semaphore*) ;
 int lock_downgrade (int *,int ) ;

void downgrade_write(struct rw_semaphore *sem)
{
 lock_downgrade(&sem->dep_map, _RET_IP_);
 __downgrade_write(sem);
}
