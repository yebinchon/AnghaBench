#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct l2cap_conn {TYPE_2__* hcon; } ;
struct l2cap_chan {scalar_t__ chan_type; int mode; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  retrans_list; int /*<<< orphan*/  srej_list; int /*<<< orphan*/  srej_q; int /*<<< orphan*/  conf_state; struct hci_chan* hs_hchan; int /*<<< orphan*/  flags; struct l2cap_conn* conn; int /*<<< orphan*/  list; TYPE_1__* ops; int /*<<< orphan*/  state; } ;
struct hci_chan {int dummy; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
struct TYPE_4__ {struct amp_mgr* amp_mgr; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* teardown ) (struct l2cap_chan*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct l2cap_conn*,...) ; 
 int /*<<< orphan*/  CONF_NOT_COMPLETE ; 
 int /*<<< orphan*/  FLAG_HOLD_HCI_CONN ; 
 scalar_t__ L2CAP_CHAN_FIXED ; 
#define  L2CAP_MODE_BASIC 131 
#define  L2CAP_MODE_ERTM 130 
#define  L2CAP_MODE_LE_FLOWCTL 129 
#define  L2CAP_MODE_STREAMING 128 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_chan*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC14(struct l2cap_chan *chan, int err)
{
	struct l2cap_conn *conn = chan->conn;

	FUNC2(chan);

	FUNC0("chan %p, conn %p, err %d, state %s", chan, conn, err,
	       FUNC11(chan->state));

	chan->ops->teardown(chan, err);

	if (conn) {
		struct amp_mgr *mgr = conn->hcon->amp_mgr;
		/* Delete from channel list */
		FUNC9(&chan->list);

		FUNC7(chan);

		chan->conn = NULL;

		/* Reference was only held for non-fixed channels or
		 * fixed channels that explicitly requested it using the
		 * FLAG_HOLD_HCI_CONN flag.
		 */
		if (chan->chan_type != L2CAP_CHAN_FIXED ||
		    FUNC13(FLAG_HOLD_HCI_CONN, &chan->flags))
			FUNC6(conn->hcon);

		if (mgr && mgr->bredr_chan == chan)
			mgr->bredr_chan = NULL;
	}

	if (chan->hs_hchan) {
		struct hci_chan *hs_hchan = chan->hs_hchan;

		FUNC0("chan %p disconnect hs_hchan %p", chan, hs_hchan);
		FUNC5(hs_hchan);
	}

	if (FUNC13(CONF_NOT_COMPLETE, &chan->conf_state))
		return;

	switch(chan->mode) {
	case L2CAP_MODE_BASIC:
		break;

	case L2CAP_MODE_LE_FLOWCTL:
		FUNC10(&chan->tx_q);
		break;

	case L2CAP_MODE_ERTM:
		FUNC4(chan);
		FUNC3(chan);
		FUNC1(chan);

		FUNC10(&chan->srej_q);

		FUNC8(&chan->srej_list);
		FUNC8(&chan->retrans_list);

		/* fall through */

	case L2CAP_MODE_STREAMING:
		FUNC10(&chan->tx_q);
		break;
	}

	return;
}