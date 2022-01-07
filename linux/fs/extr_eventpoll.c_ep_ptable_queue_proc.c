
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct file {int dummy; } ;
struct eppoll_entry {int llink; int wait; struct epitem* base; int * whead; } ;
struct TYPE_2__ {int events; } ;
struct epitem {int nwait; int pwqlist; TYPE_1__ event; } ;
typedef int poll_table ;


 int EPOLLEXCLUSIVE ;
 int GFP_KERNEL ;
 int add_wait_queue (int *,int *) ;
 int add_wait_queue_exclusive (int *,int *) ;
 struct epitem* ep_item_from_epqueue (int *) ;
 int ep_poll_callback ;
 int init_waitqueue_func_entry (int *,int ) ;
 struct eppoll_entry* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int pwq_cache ;

__attribute__((used)) static void ep_ptable_queue_proc(struct file *file, wait_queue_head_t *whead,
     poll_table *pt)
{
 struct epitem *epi = ep_item_from_epqueue(pt);
 struct eppoll_entry *pwq;

 if (epi->nwait >= 0 && (pwq = kmem_cache_alloc(pwq_cache, GFP_KERNEL))) {
  init_waitqueue_func_entry(&pwq->wait, ep_poll_callback);
  pwq->whead = whead;
  pwq->base = epi;
  if (epi->event.events & EPOLLEXCLUSIVE)
   add_wait_queue_exclusive(whead, &pwq->wait);
  else
   add_wait_queue(whead, &pwq->wait);
  list_add_tail(&pwq->llink, &epi->pwqlist);
  epi->nwait++;
 } else {

  epi->nwait = -1;
 }
}
