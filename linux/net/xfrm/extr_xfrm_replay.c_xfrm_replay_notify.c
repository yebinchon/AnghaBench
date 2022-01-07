
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ oseq; scalar_t__ seq; } ;
struct TYPE_7__ {scalar_t__ oseq; scalar_t__ seq; } ;
struct xfrm_state {int xflags; scalar_t__ replay_maxage; int rtimer; TYPE_3__ replay; TYPE_2__ preplay; scalar_t__ replay_maxdiff; } ;
struct xfrm_replay_state {int dummy; } ;
struct TYPE_6__ {int aevent; } ;
struct km_event {TYPE_1__ data; int event; } ;


 int XFRM_MSG_NEWAE ;


 int XFRM_TIME_DEFER ;
 scalar_t__ jiffies ;
 int km_state_notify (struct xfrm_state*,struct km_event*) ;
 int memcmp (TYPE_3__*,TYPE_2__*,int) ;
 int memcpy (TYPE_2__*,TYPE_3__*,int) ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void xfrm_replay_notify(struct xfrm_state *x, int event)
{
 struct km_event c;
 switch (event) {
 case 128:
  if (!x->replay_maxdiff ||
      ((x->replay.seq - x->preplay.seq < x->replay_maxdiff) &&
      (x->replay.oseq - x->preplay.oseq < x->replay_maxdiff))) {
   if (x->xflags & XFRM_TIME_DEFER)
    event = 129;
   else
    return;
  }

  break;

 case 129:
  if (memcmp(&x->replay, &x->preplay,
      sizeof(struct xfrm_replay_state)) == 0) {
   x->xflags |= XFRM_TIME_DEFER;
   return;
  }

  break;
 }

 memcpy(&x->preplay, &x->replay, sizeof(struct xfrm_replay_state));
 c.event = XFRM_MSG_NEWAE;
 c.data.aevent = event;
 km_state_notify(x, &c);

 if (x->replay_maxage &&
     !mod_timer(&x->rtimer, jiffies + x->replay_maxage))
  x->xflags &= ~XFRM_TIME_DEFER;
}
