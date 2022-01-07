
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_rw_semaphore {int * read_count; int rss; } ;


 int free_percpu (int *) ;
 int rcu_sync_dtor (int *) ;

void percpu_free_rwsem(struct percpu_rw_semaphore *sem)
{




 if (!sem->read_count)
  return;

 rcu_sync_dtor(&sem->rss);
 free_percpu(sem->read_count);
 sem->read_count = ((void*)0);
}
