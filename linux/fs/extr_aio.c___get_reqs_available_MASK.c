#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kioctx_cpu {scalar_t__ reqs_available; } ;
struct kioctx {int req_batch; int /*<<< orphan*/  reqs_available; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct kioctx_cpu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct kioctx *ctx)
{
	struct kioctx_cpu *kcpu;
	bool ret = false;
	unsigned long flags;

	FUNC3(flags);
	kcpu = FUNC4(ctx->cpu);
	if (!kcpu->reqs_available) {
		int old, avail = FUNC1(&ctx->reqs_available);

		do {
			if (avail < ctx->req_batch)
				goto out;

			old = avail;
			avail = FUNC0(&ctx->reqs_available,
					       avail, avail - ctx->req_batch);
		} while (avail != old);

		kcpu->reqs_available += ctx->req_batch;
	}

	ret = true;
	kcpu->reqs_available--;
out:
	FUNC2(flags);
	return ret;
}