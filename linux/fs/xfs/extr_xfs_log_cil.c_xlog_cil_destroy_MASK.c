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
struct xlog {TYPE_1__* l_cilp; } ;
struct TYPE_2__ {int /*<<< orphan*/  xc_cil; struct TYPE_2__* xc_ctx; scalar_t__ ticket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(
	struct xlog	*log)
{
	if (log->l_cilp->xc_ctx) {
		if (log->l_cilp->xc_ctx->ticket)
			FUNC3(log->l_cilp->xc_ctx->ticket);
		FUNC1(log->l_cilp->xc_ctx);
	}

	FUNC0(FUNC2(&log->l_cilp->xc_cil));
	FUNC1(log->l_cilp);
}