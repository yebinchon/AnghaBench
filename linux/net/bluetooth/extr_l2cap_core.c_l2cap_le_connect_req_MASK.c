#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct l2cap_le_conn_rsp {void* result; void* credits; void* dcid; void* mps; void* mtu; } ;
struct l2cap_le_conn_req {int /*<<< orphan*/  credits; int /*<<< orphan*/  psm; int /*<<< orphan*/  mps; int /*<<< orphan*/  mtu; int /*<<< orphan*/  scid; } ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; TYPE_2__* hcon; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; } ;
struct l2cap_chan {int dcid; int omtu; int remote_mps; int scid; int rx_credits; scalar_t__ imtu; scalar_t__ mps; TYPE_1__* ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  ident; int /*<<< orphan*/  psm; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  src_type; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  sec_level; } ;
typedef  int /*<<< orphan*/  rsp ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* defer ) (struct l2cap_chan*) ;int /*<<< orphan*/  (* get_sndtimeo ) (struct l2cap_chan*) ;struct l2cap_chan* (* new_connection ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int EPROTO ; 
 int /*<<< orphan*/  FLAG_DEFER_SETUP ; 
 int L2CAP_CID_DYN_START ; 
 int L2CAP_CID_LE_DYN_END ; 
 scalar_t__ L2CAP_CR_LE_AUTHENTICATION ; 
 scalar_t__ L2CAP_CR_LE_BAD_PSM ; 
 scalar_t__ L2CAP_CR_LE_INVALID_SCID ; 
 scalar_t__ L2CAP_CR_LE_NO_MEM ; 
 scalar_t__ L2CAP_CR_LE_SCID_IN_USE ; 
 scalar_t__ L2CAP_CR_LE_SUCCESS ; 
 scalar_t__ L2CAP_CR_PEND ; 
 int /*<<< orphan*/  L2CAP_LE_CONN_RSP ; 
 int /*<<< orphan*/  LE_LINK ; 
 int /*<<< orphan*/  SMP_ALLOW_STK ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_conn*,struct l2cap_chan*) ; 
 scalar_t__ FUNC2 (struct l2cap_conn*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 void* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_le_conn_rsp*) ; 
 int /*<<< orphan*/  FUNC16 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct l2cap_chan* FUNC20 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC21 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC22 (struct l2cap_chan*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct l2cap_conn *conn,
				struct l2cap_cmd_hdr *cmd, u16 cmd_len,
				u8 *data)
{
	struct l2cap_le_conn_req *req = (struct l2cap_le_conn_req *) data;
	struct l2cap_le_conn_rsp rsp;
	struct l2cap_chan *chan, *pchan;
	u16 dcid, scid, credits, mtu, mps;
	__le16 psm;
	u8 result;

	if (cmd_len != sizeof(*req))
		return -EPROTO;

	scid = FUNC3(req->scid);
	mtu  = FUNC3(req->mtu);
	mps  = FUNC3(req->mps);
	psm  = req->psm;
	dcid = 0;
	credits = 0;

	if (mtu < 23 || mps < 23)
		return -EPROTO;

	FUNC0("psm 0x%2.2x scid 0x%4.4x mtu %u mps %u", FUNC3(psm),
	       scid, mtu, mps);

	/* Check if we have socket listening on psm */
	pchan = FUNC13(BT_LISTEN, psm, &conn->hcon->src,
					 &conn->hcon->dst, LE_LINK);
	if (!pchan) {
		result = L2CAP_CR_LE_BAD_PSM;
		chan = NULL;
		goto response;
	}

	FUNC17(&conn->chan_lock);
	FUNC9(pchan);

	if (!FUNC19(conn->hcon, pchan->sec_level,
				     SMP_ALLOW_STK)) {
		result = L2CAP_CR_LE_AUTHENTICATION;
		chan = NULL;
		goto response_unlock;
	}

	/* Check for valid dynamic CID range */
	if (scid < L2CAP_CID_DYN_START || scid > L2CAP_CID_LE_DYN_END) {
		result = L2CAP_CR_LE_INVALID_SCID;
		chan = NULL;
		goto response_unlock;
	}

	/* Check if we already have channel with that dcid */
	if (FUNC2(conn, scid)) {
		result = L2CAP_CR_LE_SCID_IN_USE;
		chan = NULL;
		goto response_unlock;
	}

	chan = pchan->ops->new_connection(pchan);
	if (!chan) {
		result = L2CAP_CR_LE_NO_MEM;
		goto response_unlock;
	}

	FUNC5(&chan->src, &conn->hcon->src);
	FUNC5(&chan->dst, &conn->hcon->dst);
	chan->src_type = FUNC7(conn->hcon);
	chan->dst_type = FUNC6(conn->hcon);
	chan->psm  = psm;
	chan->dcid = scid;
	chan->omtu = mtu;
	chan->remote_mps = mps;

	FUNC1(conn, chan);

	FUNC14(chan, FUNC3(req->credits));

	dcid = chan->scid;
	credits = chan->rx_credits;

	FUNC4(chan, chan->ops->get_sndtimeo(chan));

	chan->ident = cmd->ident;

	if (FUNC23(FLAG_DEFER_SETUP, &chan->flags)) {
		FUNC16(chan, BT_CONNECT2);
		/* The following result value is actually not defined
		 * for LE CoC but we use it to let the function know
		 * that it should bail out after doing its cleanup
		 * instead of sending a response.
		 */
		result = L2CAP_CR_PEND;
		chan->ops->defer(chan);
	} else {
		FUNC11(chan);
		result = L2CAP_CR_LE_SUCCESS;
	}

response_unlock:
	FUNC12(pchan);
	FUNC18(&conn->chan_lock);
	FUNC10(pchan);

	if (result == L2CAP_CR_PEND)
		return 0;

response:
	if (chan) {
		rsp.mtu = FUNC8(chan->imtu);
		rsp.mps = FUNC8(chan->mps);
	} else {
		rsp.mtu = 0;
		rsp.mps = 0;
	}

	rsp.dcid    = FUNC8(dcid);
	rsp.credits = FUNC8(credits);
	rsp.result  = FUNC8(result);

	FUNC15(conn, cmd->ident, L2CAP_LE_CONN_RSP, sizeof(rsp), &rsp);

	return 0;
}