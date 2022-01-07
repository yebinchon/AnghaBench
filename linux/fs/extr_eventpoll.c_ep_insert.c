
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_lock; int f_ep_links; } ;
struct eventpoll {int lock; int rbr; int poll_wait; TYPE_1__* user; int wq; int rdllist; } ;
struct epoll_event {int events; } ;
struct epitem {scalar_t__ nwait; int rdllink; int rbn; int fllink; int ws; struct epoll_event event; int next; int ffd; struct eventpoll* ep; int pwqlist; } ;
struct ep_pqueue {int pt; struct epitem* epi; } ;
typedef scalar_t__ __poll_t ;
struct TYPE_2__ {int epoll_watches; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int EPOLLWAKEUP ;
 int EP_UNACTIVE_PTR ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int atomic_long_inc (int *) ;
 long atomic_long_read (int *) ;
 int ep_create_wakeup_source (struct epitem*) ;
 scalar_t__ ep_is_linked (struct epitem*) ;
 scalar_t__ ep_item_poll (struct epitem*,int *,int) ;
 int ep_pm_stay_awake (struct epitem*) ;
 int ep_poll_safewake (int *) ;
 int ep_ptable_queue_proc ;
 int ep_rbtree_insert (struct eventpoll*,struct epitem*) ;
 int ep_set_busy_poll_napi_id (struct epitem*) ;
 int ep_set_ffd (int *,struct file*,int) ;
 int ep_unregister_pollwait (struct eventpoll*,struct epitem*) ;
 int ep_wakeup_source (struct epitem*) ;
 int epi_cache ;
 int init_poll_funcptr (int *,int ) ;
 struct epitem* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct epitem*) ;
 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 int lockdep_assert_irqs_enabled () ;
 long max_user_watches ;
 int rb_erase_cached (int *,int *) ;
 scalar_t__ reverse_path_check () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;
 int wakeup_source_unregister (int ) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int ep_insert(struct eventpoll *ep, const struct epoll_event *event,
       struct file *tfile, int fd, int full_check)
{
 int error, pwake = 0;
 __poll_t revents;
 long user_watches;
 struct epitem *epi;
 struct ep_pqueue epq;

 lockdep_assert_irqs_enabled();

 user_watches = atomic_long_read(&ep->user->epoll_watches);
 if (unlikely(user_watches >= max_user_watches))
  return -ENOSPC;
 if (!(epi = kmem_cache_alloc(epi_cache, GFP_KERNEL)))
  return -ENOMEM;


 INIT_LIST_HEAD(&epi->rdllink);
 INIT_LIST_HEAD(&epi->fllink);
 INIT_LIST_HEAD(&epi->pwqlist);
 epi->ep = ep;
 ep_set_ffd(&epi->ffd, tfile, fd);
 epi->event = *event;
 epi->nwait = 0;
 epi->next = EP_UNACTIVE_PTR;
 if (epi->event.events & EPOLLWAKEUP) {
  error = ep_create_wakeup_source(epi);
  if (error)
   goto error_create_wakeup_source;
 } else {
  RCU_INIT_POINTER(epi->ws, ((void*)0));
 }


 epq.epi = epi;
 init_poll_funcptr(&epq.pt, ep_ptable_queue_proc);
 revents = ep_item_poll(epi, &epq.pt, 1);






 error = -ENOMEM;
 if (epi->nwait < 0)
  goto error_unregister;


 spin_lock(&tfile->f_lock);
 list_add_tail_rcu(&epi->fllink, &tfile->f_ep_links);
 spin_unlock(&tfile->f_lock);





 ep_rbtree_insert(ep, epi);


 error = -EINVAL;
 if (full_check && reverse_path_check())
  goto error_remove_epi;


 write_lock_irq(&ep->lock);


 ep_set_busy_poll_napi_id(epi);


 if (revents && !ep_is_linked(epi)) {
  list_add_tail(&epi->rdllink, &ep->rdllist);
  ep_pm_stay_awake(epi);


  if (waitqueue_active(&ep->wq))
   wake_up(&ep->wq);
  if (waitqueue_active(&ep->poll_wait))
   pwake++;
 }

 write_unlock_irq(&ep->lock);

 atomic_long_inc(&ep->user->epoll_watches);


 if (pwake)
  ep_poll_safewake(&ep->poll_wait);

 return 0;

error_remove_epi:
 spin_lock(&tfile->f_lock);
 list_del_rcu(&epi->fllink);
 spin_unlock(&tfile->f_lock);

 rb_erase_cached(&epi->rbn, &ep->rbr);

error_unregister:
 ep_unregister_pollwait(ep, epi);







 write_lock_irq(&ep->lock);
 if (ep_is_linked(epi))
  list_del_init(&epi->rdllink);
 write_unlock_irq(&ep->lock);

 wakeup_source_unregister(ep_wakeup_source(epi));

error_create_wakeup_source:
 kmem_cache_free(epi_cache, epi);

 return error;
}
