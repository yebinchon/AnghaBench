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
struct l2cap_chan {int /*<<< orphan*/  tx_q; int /*<<< orphan*/  tx_credits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct l2cap_chan *chan)
{
	int sent = 0;

	FUNC0("chan %p", chan);

	while (chan->tx_credits && !FUNC3(&chan->tx_q)) {
		FUNC1(chan, FUNC2(&chan->tx_q));
		chan->tx_credits--;
		sent++;
	}

	FUNC0("Sent %d credits %u queued %u", sent, chan->tx_credits,
	       FUNC4(&chan->tx_q));
}