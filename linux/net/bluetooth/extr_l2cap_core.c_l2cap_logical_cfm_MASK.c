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
typedef  scalar_t__ u8 ;
struct l2cap_chan {scalar_t__ state; scalar_t__ local_amp_id; } ;
struct hci_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ AMP_ID_BREDR ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct hci_chan*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct hci_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*,struct hci_chan*) ; 

void FUNC5(struct l2cap_chan *chan, struct hci_chan *hchan,
		       u8 status)
{
	FUNC0("chan %p, hchan %p, status %d", chan, hchan, status);

	if (status) {
		FUNC2(chan);
		FUNC1(chan);
		return;
	}

	if (chan->state != BT_CONNECTED) {
		/* Ignore logical link if channel is on BR/EDR */
		if (chan->local_amp_id != AMP_ID_BREDR)
			FUNC3(chan, hchan);
	} else {
		FUNC4(chan, hchan);
	}
}