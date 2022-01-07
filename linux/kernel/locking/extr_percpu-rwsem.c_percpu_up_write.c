
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_rw_semaphore {int rss; int rw_sem; int readers_block; } ;


 int rcu_sync_exit (int *) ;
 int smp_store_release (int *,int ) ;
 int up_write (int *) ;

void percpu_up_write(struct percpu_rw_semaphore *sem)
{
 smp_store_release(&sem->readers_block, 0);




 up_write(&sem->rw_sem);






 rcu_sync_exit(&sem->rss);
}
