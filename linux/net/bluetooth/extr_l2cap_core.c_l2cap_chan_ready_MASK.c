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
struct l2cap_chan {scalar_t__ state; scalar_t__ mode; TYPE_1__* ops; int /*<<< orphan*/  tx_credits; scalar_t__ conf_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ready ) (struct l2cap_chan*) ;int /*<<< orphan*/  (* suspend ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 scalar_t__ L2CAP_MODE_LE_FLOWCTL ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan)
{
	/* The channel may have already been flagged as connected in
	 * case of receiving data before the L2CAP info req/rsp
	 * procedure is complete.
	 */
	if (chan->state == BT_CONNECTED)
		return;

	/* This clears all conf flags, including CONF_NOT_COMPLETE */
	chan->conf_state = 0;
	FUNC0(chan);

	if (chan->mode == L2CAP_MODE_LE_FLOWCTL && !chan->tx_credits)
		chan->ops->suspend(chan);

	chan->state = BT_CONNECTED;

	chan->ops->ready(chan);
}