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
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  state; void* omtu; void* mps; void* remote_mps; scalar_t__ conf_state; int /*<<< orphan*/  mode; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  monitor_timeout; int /*<<< orphan*/  retrans_timeout; int /*<<< orphan*/  tx_win; int /*<<< orphan*/  remote_tx_win; int /*<<< orphan*/  max_tx; int /*<<< orphan*/  remote_max_tx; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flush_to; void* imtu; void* dcid; void* scid; int /*<<< orphan*/  chan_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 void* L2CAP_A2MP_DEFAULT_MTU ; 
 int /*<<< orphan*/  L2CAP_CHAN_FIXED ; 
 void* L2CAP_CID_A2MP ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_FLUSH_TO ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_MONITOR_TO ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_RETRANS_TO ; 
 int /*<<< orphan*/  L2CAP_MODE_ERTM ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  a2mp_chan_ops ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*,struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int FUNC6 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct l2cap_chan *FUNC8(struct l2cap_conn *conn, bool locked)
{
	struct l2cap_chan *chan;
	int err;

	chan = FUNC3();
	if (!chan)
		return NULL;

	FUNC0("chan %p", chan);

	chan->chan_type = L2CAP_CHAN_FIXED;
	chan->scid = L2CAP_CID_A2MP;
	chan->dcid = L2CAP_CID_A2MP;
	chan->omtu = L2CAP_A2MP_DEFAULT_MTU;
	chan->imtu = L2CAP_A2MP_DEFAULT_MTU;
	chan->flush_to = L2CAP_DEFAULT_FLUSH_TO;

	chan->ops = &a2mp_chan_ops;

	FUNC5(chan);
	chan->remote_max_tx = chan->max_tx;
	chan->remote_tx_win = chan->tx_win;

	chan->retrans_timeout = L2CAP_DEFAULT_RETRANS_TO;
	chan->monitor_timeout = L2CAP_DEFAULT_MONITOR_TO;

	FUNC7(&chan->tx_q);

	chan->mode = L2CAP_MODE_ERTM;

	err = FUNC6(chan);
	if (err < 0) {
		FUNC4(chan, 0);
		return NULL;
	}

	chan->conf_state = 0;

	if (locked)
		FUNC1(conn, chan);
	else
		FUNC2(conn, chan);

	chan->remote_mps = chan->omtu;
	chan->mps = chan->omtu;

	chan->state = BT_CONNECTED;

	return chan;
}