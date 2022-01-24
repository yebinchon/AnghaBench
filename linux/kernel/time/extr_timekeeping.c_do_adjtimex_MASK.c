#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct timekeeper {scalar_t__ tai_offset; } ;
struct audit_ntp_data {int dummy; } ;
struct TYPE_3__ {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct __kernel_timex {int modes; TYPE_1__ time; } ;
typedef  scalar_t__ s32 ;
struct TYPE_4__ {int /*<<< orphan*/  seq; struct timekeeper timekeeper; } ;

/* Variables and functions */
 int ADJ_FREQUENCY ; 
 int ADJ_NANO ; 
 int ADJ_SETOFFSET ; 
 int ADJ_TICK ; 
 int /*<<< orphan*/  TK_ADV_FREQ ; 
 int TK_CLOCK_WAS_SET ; 
 int TK_MIRROR ; 
 int FUNC0 (struct __kernel_timex*,struct timespec64*,scalar_t__*,struct audit_ntp_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct timekeeper*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_ntp_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_ntp_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec64) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timekeeper_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC12 (struct timekeeper*,int) ; 
 int FUNC13 (struct __kernel_timex*) ; 
 TYPE_2__ tk_core ; 
 int /*<<< orphan*/  FUNC14 (struct timekeeper*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct __kernel_timex *txc)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	struct audit_ntp_data ad;
	unsigned long flags;
	struct timespec64 ts;
	s32 orig_tai, tai;
	int ret;

	/* Validate the data before disabling interrupts */
	ret = FUNC13(txc);
	if (ret)
		return ret;

	if (txc->modes & ADJ_SETOFFSET) {
		struct timespec64 delta;
		delta.tv_sec  = txc->time.tv_sec;
		delta.tv_nsec = txc->time.tv_usec;
		if (!(txc->modes & ADJ_NANO))
			delta.tv_nsec *= 1000;
		ret = FUNC11(&delta);
		if (ret)
			return ret;

		FUNC4(delta);
	}

	FUNC2(&ad);

	FUNC6(&ts);

	FUNC8(&timekeeper_lock, flags);
	FUNC15(&tk_core.seq);

	orig_tai = tai = tk->tai_offset;
	ret = FUNC0(txc, &ts, &tai, &ad);

	if (tai != orig_tai) {
		FUNC1(tk, tai);
		FUNC12(tk, TK_MIRROR | TK_CLOCK_WAS_SET);
	}
	FUNC14(tk);

	FUNC16(&tk_core.seq);
	FUNC9(&timekeeper_lock, flags);

	FUNC3(&ad);

	/* Update the multiplier immediately if frequency was set directly */
	if (txc->modes & (ADJ_FREQUENCY | ADJ_TICK))
		FUNC10(TK_ADV_FREQ);

	if (tai != orig_tai)
		FUNC5();

	FUNC7();

	return ret;
}