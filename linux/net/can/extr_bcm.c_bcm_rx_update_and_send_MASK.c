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
struct canfd_frame {int flags; } ;
struct bcm_op {scalar_t__ kt_lastmsg; int /*<<< orphan*/  kt_ival2; int /*<<< orphan*/  thrtimer; int /*<<< orphan*/  cfsiz; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS_SOFT ; 
 int RX_RECV ; 
 int RX_THR ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_op*,struct canfd_frame*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct canfd_frame*,struct canfd_frame const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct bcm_op *op,
				   struct canfd_frame *lastdata,
				   const struct canfd_frame *rxdata)
{
	FUNC7(lastdata, rxdata, op->cfsiz);

	/* mark as used and throttled by default */
	lastdata->flags |= (RX_RECV|RX_THR);

	/* throttling mode inactive ? */
	if (!op->kt_ival2) {
		/* send RX_CHANGED to the user immediately */
		FUNC0(op, lastdata);
		return;
	}

	/* with active throttling timer we are just done here */
	if (FUNC1(&op->thrtimer))
		return;

	/* first reception with enabled throttling mode */
	if (!op->kt_lastmsg)
		goto rx_changed_settime;

	/* got a second frame inside a potential throttle period? */
	if (FUNC6(FUNC4(), op->kt_lastmsg) <
	    FUNC5(op->kt_ival2)) {
		/* do not send the saved data - only start throttle timer */
		FUNC2(&op->thrtimer,
			      FUNC3(op->kt_lastmsg, op->kt_ival2),
			      HRTIMER_MODE_ABS_SOFT);
		return;
	}

	/* the gap was that big, that throttling was not needed here */
rx_changed_settime:
	FUNC0(op, lastdata);
	op->kt_lastmsg = FUNC4();
}