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
struct l2cap_chan {int /*<<< orphan*/  rx_state; int /*<<< orphan*/  srej_q; int /*<<< orphan*/  srej_list; int /*<<< orphan*/  buffer_seq; int /*<<< orphan*/  expected_tx_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  L2CAP_RX_STATE_RECV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct l2cap_chan *chan)
{
	FUNC0("chan %p", chan);

	chan->expected_tx_seq = chan->buffer_seq;
	FUNC1(&chan->srej_list);
	FUNC2(&chan->srej_q);
	chan->rx_state = L2CAP_RX_STATE_RECV;
}