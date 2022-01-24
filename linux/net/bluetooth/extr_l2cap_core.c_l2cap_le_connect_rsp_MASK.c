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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct l2cap_le_conn_rsp {int /*<<< orphan*/  result; int /*<<< orphan*/  credits; int /*<<< orphan*/  mps; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dcid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; struct hci_conn* hcon; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {int dcid; int omtu; int remote_mps; int tx_credits; int sec_level; int /*<<< orphan*/  flags; int /*<<< orphan*/  ident; } ;
struct hci_conn {int /*<<< orphan*/  sec_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  BT_SECURITY_MEDIUM ; 
 int EBADSLT ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int EPROTO ; 
 int /*<<< orphan*/  FLAG_LE_CONN_REQ_SENT ; 
 int L2CAP_CID_DYN_START ; 
 int L2CAP_CID_LE_DYN_END ; 
#define  L2CAP_CR_LE_AUTHENTICATION 130 
#define  L2CAP_CR_LE_ENCRYPTION 129 
#define  L2CAP_CR_LE_SUCCESS 128 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,int) ; 
 struct l2cap_chan* FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_conn*,int) ; 

__attribute__((used)) static int FUNC12(struct l2cap_conn *conn,
				struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				u8 *data)
{
	struct l2cap_le_conn_rsp *rsp = (struct l2cap_le_conn_rsp *) data;
	struct hci_conn *hcon = conn->hcon;
	u16 dcid, mtu, mps, credits, result;
	struct l2cap_chan *chan;
	int err, sec_level;

	if (cmd_len < sizeof(*rsp))
		return -EPROTO;

	dcid    = FUNC3(rsp->dcid);
	mtu     = FUNC3(rsp->mtu);
	mps     = FUNC3(rsp->mps);
	credits = FUNC3(rsp->credits);
	result  = FUNC3(rsp->result);

	if (result == L2CAP_CR_LE_SUCCESS && (mtu < 23 || mps < 23 ||
					   dcid < L2CAP_CID_DYN_START ||
					   dcid > L2CAP_CID_LE_DYN_END))
		return -EPROTO;

	FUNC0("dcid 0x%4.4x mtu %u mps %u credits %u result 0x%2.2x",
	       dcid, mtu, mps, credits, result);

	FUNC9(&conn->chan_lock);

	chan = FUNC2(conn, cmd->ident);
	if (!chan) {
		err = -EBADSLT;
		goto unlock;
	}

	err = 0;

	FUNC6(chan);

	switch (result) {
	case L2CAP_CR_LE_SUCCESS:
		if (FUNC1(conn, dcid)) {
			err = -EBADSLT;
			break;
		}

		chan->ident = 0;
		chan->dcid = dcid;
		chan->omtu = mtu;
		chan->remote_mps = mps;
		chan->tx_credits = credits;
		FUNC7(chan);
		break;

	case L2CAP_CR_LE_AUTHENTICATION:
	case L2CAP_CR_LE_ENCRYPTION:
		/* If we already have MITM protection we can't do
		 * anything.
		 */
		if (hcon->sec_level > BT_SECURITY_MEDIUM) {
			FUNC5(chan, ECONNREFUSED);
			break;
		}

		sec_level = hcon->sec_level + 1;
		if (chan->sec_level < sec_level)
			chan->sec_level = sec_level;

		/* We'll need to send a new Connect Request */
		FUNC4(FLAG_LE_CONN_REQ_SENT, &chan->flags);

		FUNC11(hcon, chan->sec_level);
		break;

	default:
		FUNC5(chan, ECONNREFUSED);
		break;
	}

	FUNC8(chan);

unlock:
	FUNC10(&conn->chan_lock);

	return err;
}