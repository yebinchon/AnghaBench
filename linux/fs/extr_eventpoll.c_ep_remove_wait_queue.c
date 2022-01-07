
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct eppoll_entry {int wait; int whead; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int remove_wait_queue (int *,int *) ;
 int * smp_load_acquire (int *) ;

__attribute__((used)) static void ep_remove_wait_queue(struct eppoll_entry *pwq)
{
 wait_queue_head_t *whead;

 rcu_read_lock();






 whead = smp_load_acquire(&pwq->whead);
 if (whead)
  remove_wait_queue(whead, &pwq->wait);
 rcu_read_unlock();
}
