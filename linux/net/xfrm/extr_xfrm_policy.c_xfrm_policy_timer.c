
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct TYPE_6__ {scalar_t__ add_time; scalar_t__ use_time; } ;
struct TYPE_5__ {scalar_t__ hard_add_expires_seconds; scalar_t__ hard_use_expires_seconds; scalar_t__ soft_add_expires_seconds; scalar_t__ soft_use_expires_seconds; } ;
struct TYPE_4__ {int dead; } ;
struct xfrm_policy {int lock; int timer; TYPE_3__ curlft; TYPE_2__ lft; int index; TYPE_1__ walk; } ;
struct timer_list {int dummy; } ;


 scalar_t__ TIME64_MAX ;
 scalar_t__ XFRM_KM_TIMEOUT ;
 struct xfrm_policy* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int km_policy_expired (struct xfrm_policy*,int,int,int ) ;
 scalar_t__ ktime_get_real_seconds () ;
 scalar_t__ make_jiffies (scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int timer ;
 scalar_t__ unlikely (int ) ;
 int xfrm_pol_hold (struct xfrm_policy*) ;
 int xfrm_pol_put (struct xfrm_policy*) ;
 int xfrm_policy_delete (struct xfrm_policy*,int) ;
 int xfrm_policy_id2dir (int ) ;
 struct xfrm_policy* xp ;

__attribute__((used)) static void xfrm_policy_timer(struct timer_list *t)
{
 struct xfrm_policy *xp = from_timer(xp, t, timer);
 time64_t now = ktime_get_real_seconds();
 time64_t next = TIME64_MAX;
 int warn = 0;
 int dir;

 read_lock(&xp->lock);

 if (unlikely(xp->walk.dead))
  goto out;

 dir = xfrm_policy_id2dir(xp->index);

 if (xp->lft.hard_add_expires_seconds) {
  time64_t tmo = xp->lft.hard_add_expires_seconds +
   xp->curlft.add_time - now;
  if (tmo <= 0)
   goto expired;
  if (tmo < next)
   next = tmo;
 }
 if (xp->lft.hard_use_expires_seconds) {
  time64_t tmo = xp->lft.hard_use_expires_seconds +
   (xp->curlft.use_time ? : xp->curlft.add_time) - now;
  if (tmo <= 0)
   goto expired;
  if (tmo < next)
   next = tmo;
 }
 if (xp->lft.soft_add_expires_seconds) {
  time64_t tmo = xp->lft.soft_add_expires_seconds +
   xp->curlft.add_time - now;
  if (tmo <= 0) {
   warn = 1;
   tmo = XFRM_KM_TIMEOUT;
  }
  if (tmo < next)
   next = tmo;
 }
 if (xp->lft.soft_use_expires_seconds) {
  time64_t tmo = xp->lft.soft_use_expires_seconds +
   (xp->curlft.use_time ? : xp->curlft.add_time) - now;
  if (tmo <= 0) {
   warn = 1;
   tmo = XFRM_KM_TIMEOUT;
  }
  if (tmo < next)
   next = tmo;
 }

 if (warn)
  km_policy_expired(xp, dir, 0, 0);
 if (next != TIME64_MAX &&
     !mod_timer(&xp->timer, jiffies + make_jiffies(next)))
  xfrm_pol_hold(xp);

out:
 read_unlock(&xp->lock);
 xfrm_pol_put(xp);
 return;

expired:
 read_unlock(&xp->lock);
 if (!xfrm_policy_delete(xp, dir))
  km_policy_expired(xp, dir, 1, 0);
 xfrm_pol_put(xp);
}
