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
struct l2cap_conf_rsp {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  conf_state; int /*<<< orphan*/  ident; int /*<<< orphan*/  conn; TYPE_1__* hs_hcon; struct hci_chan* hs_hchan; } ;
struct hci_chan {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  l2cap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_INPUT_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_chan*) ; 
 int FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct l2cap_conf_rsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct l2cap_chan *chan,
					struct hci_chan *hchan)
{
	struct l2cap_conf_rsp rsp;

	chan->hs_hchan = hchan;
	chan->hs_hcon->l2cap_data = chan->conn;

	FUNC3(chan, &rsp, chan->ident, 0);

	if (FUNC5(CONF_INPUT_DONE, &chan->conf_state)) {
		int err;

		FUNC4(chan);

		err = FUNC1(chan);
		if (err < 0)
			FUNC2(chan, -err);
		else
			FUNC0(chan);
	}
}