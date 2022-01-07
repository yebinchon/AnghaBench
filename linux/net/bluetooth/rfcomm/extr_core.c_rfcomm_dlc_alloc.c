
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int refcnt; int lock; int tx_queue; int timer; } ;
typedef int gfp_t ;


 int BT_DBG (char*,struct rfcomm_dlc*) ;
 struct rfcomm_dlc* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int rfcomm_dlc_clear_state (struct rfcomm_dlc*) ;
 int rfcomm_dlc_timeout ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct rfcomm_dlc *rfcomm_dlc_alloc(gfp_t prio)
{
 struct rfcomm_dlc *d = kzalloc(sizeof(*d), prio);

 if (!d)
  return ((void*)0);

 timer_setup(&d->timer, rfcomm_dlc_timeout, 0);

 skb_queue_head_init(&d->tx_queue);
 mutex_init(&d->lock);
 refcount_set(&d->refcnt, 1);

 rfcomm_dlc_clear_state(d);

 BT_DBG("%p", d);

 return d;
}
