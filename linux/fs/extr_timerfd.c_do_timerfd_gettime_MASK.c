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
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  tmr; int /*<<< orphan*/  alarm; } ;
struct timerfd_ctx {TYPE_3__ wqh; scalar_t__ tintv; TYPE_2__ t; int /*<<< orphan*/  ticks; scalar_t__ expired; } ;
struct itimerspec64 {void* it_interval; void* it_value; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_4__ {struct timerfd_ctx* private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fd) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct timerfd_ctx*) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int,struct fd*) ; 
 scalar_t__ FUNC10 (struct timerfd_ctx*) ; 

__attribute__((used)) static int FUNC11(int ufd, struct itimerspec64 *t)
{
	struct fd f;
	struct timerfd_ctx *ctx;
	int ret = FUNC9(ufd, &f);
	if (ret)
		return ret;
	ctx = f.file->private_data;

	FUNC7(&ctx->wqh.lock);
	if (ctx->expired && ctx->tintv) {
		ctx->expired = 0;

		if (FUNC5(ctx)) {
			ctx->ticks +=
				FUNC0(
					&ctx->t.alarm, ctx->tintv) - 1;
			FUNC1(&ctx->t.alarm);
		} else {
			ctx->ticks +=
				FUNC3(&ctx->t.tmr, ctx->tintv)
				- 1;
			FUNC4(&ctx->t.tmr);
		}
	}
	t->it_value = FUNC6(FUNC10(ctx));
	t->it_interval = FUNC6(ctx->tintv);
	FUNC8(&ctx->wqh.lock);
	FUNC2(f);
	return 0;
}