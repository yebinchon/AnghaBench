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
struct kioctx_cpu {int reqs_available; } ;
struct kioctx {int req_batch; int /*<<< orphan*/  reqs_available; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct kioctx_cpu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kioctx *ctx, unsigned nr)
{
	struct kioctx_cpu *kcpu;
	unsigned long flags;

	FUNC2(flags);
	kcpu = FUNC3(ctx->cpu);
	kcpu->reqs_available += nr;

	while (kcpu->reqs_available >= ctx->req_batch * 2) {
		kcpu->reqs_available -= ctx->req_batch;
		FUNC0(ctx->req_batch, &ctx->reqs_available);
	}

	FUNC1(flags);
}