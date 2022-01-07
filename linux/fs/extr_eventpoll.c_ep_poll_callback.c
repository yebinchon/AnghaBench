
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int entry; } ;
typedef TYPE_2__ wait_queue_entry_t ;
struct eventpoll {int poll_wait; int lock; int wq; int rdllist; int ovflist; } ;
struct TYPE_7__ {int events; } ;
struct epitem {scalar_t__ next; TYPE_1__ event; int rdllink; struct eventpoll* ep; } ;
typedef int __poll_t ;
struct TYPE_9__ {int whead; } ;


 int EPOLLEXCLUSIVE ;

 int EPOLLINOUT_BITS ;

 int EP_PRIVATE_BITS ;
 scalar_t__ EP_UNACTIVE_PTR ;
 int POLLFREE ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ chain_epi_lockless (struct epitem*) ;
 int ep_is_linked (struct epitem*) ;
 struct epitem* ep_item_from_wait (TYPE_2__*) ;
 int ep_pm_stay_awake_rcu (struct epitem*) ;
 int ep_poll_safewake (int *) ;
 TYPE_3__* ep_pwq_from_wait (TYPE_2__*) ;
 int ep_set_busy_poll_napi_id (struct epitem*) ;
 int key_to_poll (void*) ;
 scalar_t__ list_add_tail_lockless (int *,int *) ;
 int list_del_init (int *) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int smp_store_release (int *,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int ep_poll_callback(wait_queue_entry_t *wait, unsigned mode, int sync, void *key)
{
 int pwake = 0;
 struct epitem *epi = ep_item_from_wait(wait);
 struct eventpoll *ep = epi->ep;
 __poll_t pollflags = key_to_poll(key);
 unsigned long flags;
 int ewake = 0;

 read_lock_irqsave(&ep->lock, flags);

 ep_set_busy_poll_napi_id(epi);







 if (!(epi->event.events & ~EP_PRIVATE_BITS))
  goto out_unlock;







 if (pollflags && !(pollflags & epi->event.events))
  goto out_unlock;







 if (READ_ONCE(ep->ovflist) != EP_UNACTIVE_PTR) {
  if (epi->next == EP_UNACTIVE_PTR &&
      chain_epi_lockless(epi))
   ep_pm_stay_awake_rcu(epi);
  goto out_unlock;
 }


 if (!ep_is_linked(epi) &&
     list_add_tail_lockless(&epi->rdllink, &ep->rdllist)) {
  ep_pm_stay_awake_rcu(epi);
 }





 if (waitqueue_active(&ep->wq)) {
  if ((epi->event.events & EPOLLEXCLUSIVE) &&
     !(pollflags & POLLFREE)) {
   switch (pollflags & EPOLLINOUT_BITS) {
   case 129:
    if (epi->event.events & 129)
     ewake = 1;
    break;
   case 128:
    if (epi->event.events & 128)
     ewake = 1;
    break;
   case 0:
    ewake = 1;
    break;
   }
  }
  wake_up(&ep->wq);
 }
 if (waitqueue_active(&ep->poll_wait))
  pwake++;

out_unlock:
 read_unlock_irqrestore(&ep->lock, flags);


 if (pwake)
  ep_poll_safewake(&ep->poll_wait);

 if (!(epi->event.events & EPOLLEXCLUSIVE))
  ewake = 1;

 if (pollflags & POLLFREE) {





  list_del_init(&wait->entry);






  smp_store_release(&ep_pwq_from_wait(wait)->whead, ((void*)0));
 }

 return ewake;
}
