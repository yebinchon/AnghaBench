
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eventpoll {int poll_wait; int lock; int wq; int rdllist; } ;
struct epoll_event {int events; int data; } ;
struct TYPE_2__ {int events; int data; } ;
struct epitem {int rdllink; TYPE_1__ event; } ;
typedef int poll_table ;


 int EPOLLWAKEUP ;
 int ep_create_wakeup_source (struct epitem*) ;
 int ep_destroy_wakeup_source (struct epitem*) ;
 scalar_t__ ep_has_wakeup_source (struct epitem*) ;
 int ep_is_linked (struct epitem*) ;
 scalar_t__ ep_item_poll (struct epitem*,int *,int) ;
 int ep_pm_stay_awake (struct epitem*) ;
 int ep_poll_safewake (int *) ;
 int init_poll_funcptr (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_irqs_enabled () ;
 int smp_mb () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int ep_modify(struct eventpoll *ep, struct epitem *epi,
       const struct epoll_event *event)
{
 int pwake = 0;
 poll_table pt;

 lockdep_assert_irqs_enabled();

 init_poll_funcptr(&pt, ((void*)0));






 epi->event.events = event->events;
 epi->event.data = event->data;
 if (epi->event.events & EPOLLWAKEUP) {
  if (!ep_has_wakeup_source(epi))
   ep_create_wakeup_source(epi);
 } else if (ep_has_wakeup_source(epi)) {
  ep_destroy_wakeup_source(epi);
 }
 smp_mb();







 if (ep_item_poll(epi, &pt, 1)) {
  write_lock_irq(&ep->lock);
  if (!ep_is_linked(epi)) {
   list_add_tail(&epi->rdllink, &ep->rdllist);
   ep_pm_stay_awake(epi);


   if (waitqueue_active(&ep->wq))
    wake_up(&ep->wq);
   if (waitqueue_active(&ep->poll_wait))
    pwake++;
  }
  write_unlock_irq(&ep->lock);
 }


 if (pwake)
  ep_poll_safewake(&ep->poll_wait);

 return 0;
}
