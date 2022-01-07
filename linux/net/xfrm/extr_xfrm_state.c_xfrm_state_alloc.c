
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* hard_packet_limit; void* hard_byte_limit; void* soft_packet_limit; void* soft_byte_limit; } ;
struct TYPE_6__ {int add_time; } ;
struct TYPE_8__ {int function; } ;
struct TYPE_5__ {int all; } ;
struct xfrm_state {int lock; scalar_t__ replay_maxdiff; scalar_t__ replay_maxage; TYPE_3__ lft; TYPE_2__ curlft; int rtimer; TYPE_4__ mtimer; int byspi; int bysrc; int bydst; TYPE_1__ km; int tunnel_users; int refcnt; int xs_net; } ;
struct net {int dummy; } ;


 int CLOCK_BOOTTIME ;
 int GFP_ATOMIC ;
 int HRTIMER_MODE_ABS_SOFT ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 void* XFRM_INF ;
 int __GFP_ZERO ;
 int atomic_set (int *,int ) ;
 int hrtimer_init (TYPE_4__*,int ,int ) ;
 struct xfrm_state* kmem_cache_alloc (int ,int) ;
 int ktime_get_real_seconds () ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int write_pnet (int *,struct net*) ;
 int xfrm_replay_timer_handler ;
 int xfrm_state_cache ;
 int xfrm_timer_handler ;

struct xfrm_state *xfrm_state_alloc(struct net *net)
{
 struct xfrm_state *x;

 x = kmem_cache_alloc(xfrm_state_cache, GFP_ATOMIC | __GFP_ZERO);

 if (x) {
  write_pnet(&x->xs_net, net);
  refcount_set(&x->refcnt, 1);
  atomic_set(&x->tunnel_users, 0);
  INIT_LIST_HEAD(&x->km.all);
  INIT_HLIST_NODE(&x->bydst);
  INIT_HLIST_NODE(&x->bysrc);
  INIT_HLIST_NODE(&x->byspi);
  hrtimer_init(&x->mtimer, CLOCK_BOOTTIME, HRTIMER_MODE_ABS_SOFT);
  x->mtimer.function = xfrm_timer_handler;
  timer_setup(&x->rtimer, xfrm_replay_timer_handler, 0);
  x->curlft.add_time = ktime_get_real_seconds();
  x->lft.soft_byte_limit = XFRM_INF;
  x->lft.soft_packet_limit = XFRM_INF;
  x->lft.hard_byte_limit = XFRM_INF;
  x->lft.hard_packet_limit = XFRM_INF;
  x->replay_maxage = 0;
  x->replay_maxdiff = 0;
  spin_lock_init(&x->lock);
 }
 return x;
}
