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
struct sk_buff {unsigned int len; TYPE_1__* dev; int /*<<< orphan*/  tstamp; scalar_t__ data; } ;
struct canfd_frame {scalar_t__ can_id; } ;
struct bcm_op {scalar_t__ can_id; unsigned int cfsiz; int flags; int nframes; struct canfd_frame const* frames; int /*<<< orphan*/  last_frames; int /*<<< orphan*/  frames_abs; int /*<<< orphan*/  rx_ifindex; int /*<<< orphan*/  rx_stamp; int /*<<< orphan*/  timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int RX_FILTER_ID ; 
 int RX_RTR_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_op*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_op*,unsigned int,struct canfd_frame const*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_op*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_op*,int /*<<< orphan*/ ,struct canfd_frame const*) ; 
 int FUNC4 (struct canfd_frame const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, void *data)
{
	struct bcm_op *op = (struct bcm_op *)data;
	const struct canfd_frame *rxframe = (struct canfd_frame *)skb->data;
	unsigned int i;

	if (op->can_id != rxframe->can_id)
		return;

	/* make sure to handle the correct frame type (CAN / CAN FD) */
	if (skb->len != op->cfsiz)
		return;

	/* disable timeout */
	FUNC5(&op->timer);

	/* save rx timestamp */
	op->rx_stamp = skb->tstamp;
	/* save originator for recvfrom() */
	op->rx_ifindex = skb->dev->ifindex;
	/* update statistics */
	op->frames_abs++;

	if (op->flags & RX_RTR_FRAME) {
		/* send reply for RTR-request (placed in op->frames[0]) */
		FUNC0(op);
		return;
	}

	if (op->flags & RX_FILTER_ID) {
		/* the easiest case */
		FUNC3(op, op->last_frames, rxframe);
		goto rx_starttimer;
	}

	if (op->nframes == 1) {
		/* simple compare with index 0 */
		FUNC1(op, 0, rxframe);
		goto rx_starttimer;
	}

	if (op->nframes > 1) {
		/*
		 * multiplex compare
		 *
		 * find the first multiplex mask that fits.
		 * Remark: The MUX-mask is stored in index 0 - but only the
		 * first 64 bits of the frame data[] are relevant (CAN FD)
		 */

		for (i = 1; i < op->nframes; i++) {
			if ((FUNC4(op->frames, 0) & FUNC4(rxframe, 0)) ==
			    (FUNC4(op->frames, 0) &
			     FUNC4(op->frames + op->cfsiz * i, 0))) {
				FUNC1(op, i, rxframe);
				break;
			}
		}
	}

rx_starttimer:
	FUNC2(op);
}