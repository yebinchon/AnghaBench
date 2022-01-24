#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct io_uring_params {int flags; int sq_thread_cpu; int /*<<< orphan*/  sq_thread_idle; } ;
struct io_ring_ctx {int flags; int /*<<< orphan*/ * sqo_mm; void** sqo_wq; scalar_t__ sq_entries; int /*<<< orphan*/ * sqo_thread; scalar_t__ sq_thread_idle; int /*<<< orphan*/  sqo_wait; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 scalar_t__ HZ ; 
 int IORING_SETUP_SQPOLL ; 
 int IORING_SETUP_SQ_AFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int WQ_FREEZABLE ; 
 int WQ_UNBOUND ; 
 void* FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  io_sq_thread ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,struct io_ring_ctx*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,struct io_ring_ctx*,int,char*) ; 
 int FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct io_ring_ctx *ctx,
			       struct io_uring_params *p)
{
	int ret;

	FUNC5(&ctx->sqo_wait);
	FUNC11(current->mm);
	ctx->sqo_mm = current->mm;

	if (ctx->flags & IORING_SETUP_SQPOLL) {
		ret = -EPERM;
		if (!FUNC3(CAP_SYS_ADMIN))
			goto err;

		ctx->sq_thread_idle = FUNC12(p->sq_thread_idle);
		if (!ctx->sq_thread_idle)
			ctx->sq_thread_idle = HZ;

		if (p->flags & IORING_SETUP_SQ_AFF) {
			int cpu = p->sq_thread_cpu;

			ret = -EINVAL;
			if (cpu >= nr_cpu_ids)
				goto err;
			if (!FUNC4(cpu))
				goto err;

			ctx->sqo_thread = FUNC8(io_sq_thread,
							ctx, cpu,
							"io_uring-sq");
		} else {
			ctx->sqo_thread = FUNC7(io_sq_thread, ctx,
							"io_uring-sq");
		}
		if (FUNC0(ctx->sqo_thread)) {
			ret = FUNC1(ctx->sqo_thread);
			ctx->sqo_thread = NULL;
			goto err;
		}
		FUNC14(ctx->sqo_thread);
	} else if (p->flags & IORING_SETUP_SQ_AFF) {
		/* Can't have SQ_AFF without SQPOLL */
		ret = -EINVAL;
		goto err;
	}

	/* Do QD, or 2 * CPUS, whatever is smallest */
	ctx->sqo_wq[0] = FUNC2("io_ring-wq",
			WQ_UNBOUND | WQ_FREEZABLE,
			FUNC9(ctx->sq_entries - 1, 2 * FUNC13()));
	if (!ctx->sqo_wq[0]) {
		ret = -ENOMEM;
		goto err;
	}

	/*
	 * This is for buffered writes, where we want to limit the parallelism
	 * due to file locking in file systems. As "normal" buffered writes
	 * should parellelize on writeout quite nicely, limit us to having 2
	 * pending. This avoids massive contention on the inode when doing
	 * buffered async writes.
	 */
	ctx->sqo_wq[1] = FUNC2("io_ring-write-wq",
						WQ_UNBOUND | WQ_FREEZABLE, 2);
	if (!ctx->sqo_wq[1]) {
		ret = -ENOMEM;
		goto err;
	}

	return 0;
err:
	FUNC6(ctx);
	FUNC10(ctx->sqo_mm);
	ctx->sqo_mm = NULL;
	return ret;
}