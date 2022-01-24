#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time64_t ;
struct TYPE_6__ {scalar_t__ add_time; scalar_t__ use_time; } ;
struct TYPE_5__ {scalar_t__ hard_add_expires_seconds; scalar_t__ hard_use_expires_seconds; scalar_t__ soft_add_expires_seconds; scalar_t__ soft_use_expires_seconds; } ;
struct TYPE_4__ {int /*<<< orphan*/  dead; } ;
struct xfrm_policy {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; TYPE_3__ curlft; TYPE_2__ lft; int /*<<< orphan*/  index; TYPE_1__ walk; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ TIME64_MAX ; 
 scalar_t__ XFRM_KM_TIMEOUT ; 
 struct xfrm_policy* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_policy*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct xfrm_policy* xp ; 

__attribute__((used)) static void FUNC12(struct timer_list *t)
{
	struct xfrm_policy *xp = FUNC0(xp, t, timer);
	time64_t now = FUNC2();
	time64_t next = TIME64_MAX;
	int warn = 0;
	int dir;

	FUNC5(&xp->lock);

	if (FUNC7(xp->walk.dead))
		goto out;

	dir = FUNC11(xp->index);

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
		FUNC1(xp, dir, 0, 0);
	if (next != TIME64_MAX &&
	    !FUNC4(&xp->timer, jiffies + FUNC3(next)))
		FUNC8(xp);

out:
	FUNC6(&xp->lock);
	FUNC9(xp);
	return;

expired:
	FUNC6(&xp->lock);
	if (!FUNC10(xp, dir))
		FUNC1(xp, dir, 1, 0);
	FUNC9(xp);
}