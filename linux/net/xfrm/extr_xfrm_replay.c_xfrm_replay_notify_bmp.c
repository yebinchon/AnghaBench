
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_state {int xflags; scalar_t__ replay_maxage; int rtimer; struct xfrm_replay_state_esn* replay_esn; struct xfrm_replay_state_esn* preplay_esn; scalar_t__ replay_maxdiff; } ;
struct xfrm_replay_state_esn {scalar_t__ oseq; scalar_t__ seq; } ;
struct TYPE_2__ {int aevent; } ;
struct km_event {TYPE_1__ data; int event; } ;


 int XFRM_MSG_NEWAE ;


 int XFRM_TIME_DEFER ;
 scalar_t__ jiffies ;
 int km_state_notify (struct xfrm_state*,struct km_event*) ;
 int memcmp (struct xfrm_replay_state_esn*,struct xfrm_replay_state_esn*,int ) ;
 int memcpy (struct xfrm_replay_state_esn*,struct xfrm_replay_state_esn*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int xfrm_replay_state_esn_len (struct xfrm_replay_state_esn*) ;

__attribute__((used)) static void xfrm_replay_notify_bmp(struct xfrm_state *x, int event)
{
 struct km_event c;
 struct xfrm_replay_state_esn *replay_esn = x->replay_esn;
 struct xfrm_replay_state_esn *preplay_esn = x->preplay_esn;
 switch (event) {
 case 128:
  if (!x->replay_maxdiff ||
      ((replay_esn->seq - preplay_esn->seq < x->replay_maxdiff) &&
      (replay_esn->oseq - preplay_esn->oseq
       < x->replay_maxdiff))) {
   if (x->xflags & XFRM_TIME_DEFER)
    event = 129;
   else
    return;
  }

  break;

 case 129:
  if (memcmp(x->replay_esn, x->preplay_esn,
      xfrm_replay_state_esn_len(replay_esn)) == 0) {
   x->xflags |= XFRM_TIME_DEFER;
   return;
  }

  break;
 }

 memcpy(x->preplay_esn, x->replay_esn,
        xfrm_replay_state_esn_len(replay_esn));
 c.event = XFRM_MSG_NEWAE;
 c.data.aevent = event;
 km_state_notify(x, &c);

 if (x->replay_maxage &&
     !mod_timer(&x->rtimer, jiffies + x->replay_maxage))
  x->xflags &= ~XFRM_TIME_DEFER;
}
