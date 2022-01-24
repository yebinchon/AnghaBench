#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
struct TYPE_5__ {TYPE_2__ tmr; int /*<<< orphan*/  alarm; } ;
struct timerfd_ctx {int clockid; int settime_flags; TYPE_1__ t; void* tintv; scalar_t__ ticks; scalar_t__ expired; } ;
struct itimerspec64 {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
typedef  scalar_t__ ktime_t ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;

/* Variables and functions */
 int /*<<< orphan*/  ALARM_BOOTTIME ; 
 int /*<<< orphan*/  ALARM_REALTIME ; 
 int CLOCK_REALTIME_ALARM ; 
 int ECANCELED ; 
 int HRTIMER_MODE_ABS ; 
 int HRTIMER_MODE_REL ; 
 int TFD_SETTIME_FLAGS ; 
 int TFD_TIMER_ABSTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC6 (struct timerfd_ctx*) ; 
 int /*<<< orphan*/  timerfd_alarmproc ; 
 scalar_t__ FUNC7 (struct timerfd_ctx*) ; 
 int /*<<< orphan*/  timerfd_tmrproc ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct timerfd_ctx *ctx, int flags,
			 const struct itimerspec64 *ktmr)
{
	enum hrtimer_mode htmode;
	ktime_t texp;
	int clockid = ctx->clockid;

	htmode = (flags & TFD_TIMER_ABSTIME) ?
		HRTIMER_MODE_ABS: HRTIMER_MODE_REL;

	texp = FUNC8(ktmr->it_value);
	ctx->expired = 0;
	ctx->ticks = 0;
	ctx->tintv = FUNC8(ktmr->it_interval);

	if (FUNC6(ctx)) {
		FUNC0(&ctx->t.alarm,
			   ctx->clockid == CLOCK_REALTIME_ALARM ?
			   ALARM_REALTIME : ALARM_BOOTTIME,
			   timerfd_alarmproc);
	} else {
		FUNC3(&ctx->t.tmr, clockid, htmode);
		FUNC4(&ctx->t.tmr, texp);
		ctx->t.tmr.function = timerfd_tmrproc;
	}

	if (texp != 0) {
		if (FUNC6(ctx)) {
			if (flags & TFD_TIMER_ABSTIME)
				FUNC1(&ctx->t.alarm, texp);
			else
				FUNC2(&ctx->t.alarm, texp);
		} else {
			FUNC5(&ctx->t.tmr, texp, htmode);
		}

		if (FUNC7(ctx))
			return -ECANCELED;
	}

	ctx->settime_flags = flags & TFD_SETTIME_FLAGS;
	return 0;
}