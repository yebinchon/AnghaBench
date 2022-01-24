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
struct sctp_transport {scalar_t__ rto; int /*<<< orphan*/  T3_rtx_timer; TYPE_1__* asoc; } ;
struct TYPE_2__ {int /*<<< orphan*/  outqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_RTXR_T3_RTX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sctp_transport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct sctp_transport *t)
{
	/* Stop pending T3_rtx_timer */
	if (FUNC0(&t->T3_rtx_timer))
		FUNC4(t);

	FUNC2(&t->asoc->outqueue, t, SCTP_RTXR_T3_RTX);
	if (!FUNC5(&t->T3_rtx_timer)) {
		if (!FUNC1(&t->T3_rtx_timer, jiffies + t->rto))
			FUNC3(t);
	}
}