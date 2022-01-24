#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {int /*<<< orphan*/  timer; } ;
struct TYPE_7__ {int /*<<< orphan*/  tmr; TYPE_4__ alarm; } ;
struct timerfd_ctx {TYPE_3__ wqh; scalar_t__ tintv; TYPE_2__ t; scalar_t__ expired; } ;
struct itimerspec64 {void* it_interval; void* it_value; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_6__ {struct timerfd_ctx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_WAKE_ALARM ; 
 int EINVAL ; 
 int EPERM ; 
 int TFD_SETTIME_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fd) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct timerfd_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct itimerspec64 const*) ; 
 void* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int,struct fd*) ; 
 scalar_t__ FUNC13 (struct timerfd_ctx*) ; 
 int FUNC14 (struct timerfd_ctx*,int,struct itimerspec64 const*) ; 
 int /*<<< orphan*/  FUNC15 (struct timerfd_ctx*,int) ; 

__attribute__((used)) static int FUNC16(int ufd, int flags, 
		const struct itimerspec64 *new,
		struct itimerspec64 *old)
{
	struct fd f;
	struct timerfd_ctx *ctx;
	int ret;

	if ((flags & ~TFD_SETTIME_FLAGS) ||
		 !FUNC8(new))
		return -EINVAL;

	ret = FUNC12(ufd, &f);
	if (ret)
		return ret;
	ctx = f.file->private_data;

	if (FUNC7(ctx) && !FUNC2(CAP_WAKE_ALARM)) {
		FUNC3(f);
		return -EPERM;
	}

	FUNC15(ctx, flags);

	/*
	 * We need to stop the existing timer before reprogramming
	 * it to the new values.
	 */
	for (;;) {
		FUNC10(&ctx->wqh.lock);

		if (FUNC7(ctx)) {
			if (FUNC1(&ctx->t.alarm) >= 0)
				break;
		} else {
			if (FUNC6(&ctx->t.tmr) >= 0)
				break;
		}
		FUNC11(&ctx->wqh.lock);

		if (FUNC7(ctx))
			FUNC4(&ctx->t.alarm.timer);
		else
			FUNC4(&ctx->t.tmr);
	}

	/*
	 * If the timer is expired and it's periodic, we need to advance it
	 * because the caller may want to know the previous expiration time.
	 * We do not update "ticks" and "expired" since the timer will be
	 * re-programmed again in the following timerfd_setup() call.
	 */
	if (ctx->expired && ctx->tintv) {
		if (FUNC7(ctx))
			FUNC0(&ctx->t.alarm, ctx->tintv);
		else
			FUNC5(&ctx->t.tmr, ctx->tintv);
	}

	old->it_value = FUNC9(FUNC13(ctx));
	old->it_interval = FUNC9(ctx->tintv);

	/*
	 * Re-program the timer to the new value ...
	 */
	ret = FUNC14(ctx, flags, new);

	FUNC11(&ctx->wqh.lock);
	FUNC3(f);
	return ret;
}