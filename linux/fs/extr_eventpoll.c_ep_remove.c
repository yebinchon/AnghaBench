
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int f_lock; } ;
struct eventpoll {TYPE_2__* user; int lock; int rbr; } ;
struct TYPE_3__ {struct file* file; } ;
struct epitem {int rcu; int rdllink; int rbn; int fllink; TYPE_1__ ffd; } ;
struct TYPE_4__ {int epoll_watches; } ;


 int atomic_long_dec (int *) ;
 int call_rcu (int *,int ) ;
 scalar_t__ ep_is_linked (struct epitem*) ;
 int ep_unregister_pollwait (struct eventpoll*,struct epitem*) ;
 int ep_wakeup_source (struct epitem*) ;
 int epi_rcu_free ;
 int list_del_init (int *) ;
 int list_del_rcu (int *) ;
 int lockdep_assert_irqs_enabled () ;
 int rb_erase_cached (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wakeup_source_unregister (int ) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static int ep_remove(struct eventpoll *ep, struct epitem *epi)
{
 struct file *file = epi->ffd.file;

 lockdep_assert_irqs_enabled();




 ep_unregister_pollwait(ep, epi);


 spin_lock(&file->f_lock);
 list_del_rcu(&epi->fllink);
 spin_unlock(&file->f_lock);

 rb_erase_cached(&epi->rbn, &ep->rbr);

 write_lock_irq(&ep->lock);
 if (ep_is_linked(epi))
  list_del_init(&epi->rdllink);
 write_unlock_irq(&ep->lock);

 wakeup_source_unregister(ep_wakeup_source(epi));







 call_rcu(&epi->rcu, epi_rcu_free);

 atomic_long_dec(&ep->user->epoll_watches);

 return 0;
}
