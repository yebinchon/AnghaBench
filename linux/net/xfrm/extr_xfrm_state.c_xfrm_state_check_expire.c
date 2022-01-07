
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dying; int state; } ;
struct TYPE_5__ {scalar_t__ hard_byte_limit; scalar_t__ hard_packet_limit; scalar_t__ soft_byte_limit; scalar_t__ soft_packet_limit; } ;
struct TYPE_4__ {scalar_t__ bytes; scalar_t__ packets; scalar_t__ use_time; } ;
struct xfrm_state {TYPE_3__ km; TYPE_2__ lft; TYPE_1__ curlft; int mtimer; } ;


 int EINVAL ;
 int HRTIMER_MODE_REL_SOFT ;
 int XFRM_STATE_EXPIRED ;
 int hrtimer_start (int *,int ,int ) ;
 int km_state_expired (struct xfrm_state*,int ,int ) ;
 scalar_t__ ktime_get_real_seconds () ;

int xfrm_state_check_expire(struct xfrm_state *x)
{
 if (!x->curlft.use_time)
  x->curlft.use_time = ktime_get_real_seconds();

 if (x->curlft.bytes >= x->lft.hard_byte_limit ||
     x->curlft.packets >= x->lft.hard_packet_limit) {
  x->km.state = XFRM_STATE_EXPIRED;
  hrtimer_start(&x->mtimer, 0, HRTIMER_MODE_REL_SOFT);
  return -EINVAL;
 }

 if (!x->km.dying &&
     (x->curlft.bytes >= x->lft.soft_byte_limit ||
      x->curlft.packets >= x->lft.soft_packet_limit)) {
  x->km.dying = 1;
  km_state_expired(x, 0, 0);
 }
 return 0;
}
