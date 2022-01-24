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
struct l2cap_conn {int /*<<< orphan*/  chan_l; TYPE_1__* hcon; int /*<<< orphan*/  disc_reason; } ;
struct l2cap_chan {int chan_type; int /*<<< orphan*/  list; int /*<<< orphan*/  flags; int /*<<< orphan*/  local_flush_to; int /*<<< orphan*/  local_acc_lat; int /*<<< orphan*/  local_sdu_itime; int /*<<< orphan*/  local_msdu; int /*<<< orphan*/  local_stype; int /*<<< orphan*/  local_id; void* omtu; void* dcid; void* scid; struct l2cap_conn* conn; int /*<<< orphan*/  psm; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FLAG_HOLD_HCI_CONN ; 
 int /*<<< orphan*/  HCI_ERROR_REMOTE_USER_TERM ; 
 int /*<<< orphan*/  L2CAP_BESTEFFORT_ID ; 
#define  L2CAP_CHAN_CONN_LESS 130 
#define  L2CAP_CHAN_CONN_ORIENTED 129 
#define  L2CAP_CHAN_FIXED 128 
 void* L2CAP_CID_CONN_LESS ; 
 void* L2CAP_CID_SIGNALING ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_ACC_LAT ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_MAX_SDU_SIZE ; 
 void* L2CAP_DEFAULT_MTU ; 
 int /*<<< orphan*/  L2CAP_DEFAULT_SDU_ITIME ; 
 int /*<<< orphan*/  L2CAP_EFS_DEFAULT_FLUSH_TO ; 
 int /*<<< orphan*/  L2CAP_SERV_BESTEFFORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct l2cap_conn *conn, struct l2cap_chan *chan)
{
	FUNC0("conn %p, psm 0x%2.2x, dcid 0x%4.4x", conn,
	       FUNC1(chan->psm), chan->dcid);

	conn->disc_reason = HCI_ERROR_REMOTE_USER_TERM;

	chan->conn = conn;

	switch (chan->chan_type) {
	case L2CAP_CHAN_CONN_ORIENTED:
		/* Alloc CID for connection-oriented socket */
		chan->scid = FUNC3(conn);
		if (conn->hcon->type == ACL_LINK)
			chan->omtu = L2CAP_DEFAULT_MTU;
		break;

	case L2CAP_CHAN_CONN_LESS:
		/* Connectionless socket */
		chan->scid = L2CAP_CID_CONN_LESS;
		chan->dcid = L2CAP_CID_CONN_LESS;
		chan->omtu = L2CAP_DEFAULT_MTU;
		break;

	case L2CAP_CHAN_FIXED:
		/* Caller will set CID and CID specific MTU values */
		break;

	default:
		/* Raw socket can send/recv signalling messages only */
		chan->scid = L2CAP_CID_SIGNALING;
		chan->dcid = L2CAP_CID_SIGNALING;
		chan->omtu = L2CAP_DEFAULT_MTU;
	}

	chan->local_id		= L2CAP_BESTEFFORT_ID;
	chan->local_stype	= L2CAP_SERV_BESTEFFORT;
	chan->local_msdu	= L2CAP_DEFAULT_MAX_SDU_SIZE;
	chan->local_sdu_itime	= L2CAP_DEFAULT_SDU_ITIME;
	chan->local_acc_lat	= L2CAP_DEFAULT_ACC_LAT;
	chan->local_flush_to	= L2CAP_EFS_DEFAULT_FLUSH_TO;

	FUNC4(chan);

	/* Only keep a reference for fixed channels if they requested it */
	if (chan->chan_type != L2CAP_CHAN_FIXED ||
	    FUNC6(FLAG_HOLD_HCI_CONN, &chan->flags))
		FUNC2(conn->hcon);

	FUNC5(&chan->list, &conn->chan_l);
}