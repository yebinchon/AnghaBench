
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
struct xfrm_state {int lock; int xflags; TYPE_2__* repl; TYPE_1__ km; } ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int (* notify ) (struct xfrm_state*,int ) ;} ;


 int XFRM_REPLAY_TIMEOUT ;
 scalar_t__ XFRM_STATE_VALID ;
 int XFRM_TIME_DEFER ;
 struct xfrm_state* from_timer (int ,struct timer_list*,int ) ;
 int rtimer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct xfrm_state*,int ) ;
 struct xfrm_state* x ;
 scalar_t__ xfrm_aevent_is_on (int ) ;
 int xs_net (struct xfrm_state*) ;

__attribute__((used)) static void xfrm_replay_timer_handler(struct timer_list *t)
{
 struct xfrm_state *x = from_timer(x, t, rtimer);

 spin_lock(&x->lock);

 if (x->km.state == XFRM_STATE_VALID) {
  if (xfrm_aevent_is_on(xs_net(x)))
   x->repl->notify(x, XFRM_REPLAY_TIMEOUT);
  else
   x->xflags |= XFRM_TIME_DEFER;
 }

 spin_unlock(&x->lock);
}
