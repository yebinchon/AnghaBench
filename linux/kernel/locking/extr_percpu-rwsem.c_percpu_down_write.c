
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_rw_semaphore {int writer; int readers_block; int rw_sem; int rss; } ;


 int WRITE_ONCE (int ,int) ;
 int down_write (int *) ;
 int rcu_sync_enter (int *) ;
 int rcuwait_wait_event (int *,int ) ;
 int readers_active_check (struct percpu_rw_semaphore*) ;
 int smp_mb () ;

void percpu_down_write(struct percpu_rw_semaphore *sem)
{

 rcu_sync_enter(&sem->rss);

 down_write(&sem->rw_sem);





 WRITE_ONCE(sem->readers_block, 1);

 smp_mb();
 rcuwait_wait_event(&sem->writer, readers_active_check(sem));
}
