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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct l2cap_conn {int /*<<< orphan*/  chan_lock; } ;
struct l2cap_chan {scalar_t__ chan_type; int mode; int state; scalar_t__ sport; TYPE_1__* ops; int /*<<< orphan*/  src_type; int /*<<< orphan*/  src; int /*<<< orphan*/  sec_level; scalar_t__ dcid; int /*<<< orphan*/  psm; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int const state; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_sndtimeo ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_LE_DEV_PUBLIC ; 
 int /*<<< orphan*/  ADDR_LE_DEV_RANDOM ; 
 int /*<<< orphan*/  BDADDR_LE_PUBLIC ; 
#define  BT_BOUND 137 
#define  BT_CONFIG 136 
#define  BT_CONNECT 135 
#define  BT_CONNECT2 134 
#define  BT_CONNECTED 133 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  BT_OPEN 132 
 int EBADFD ; 
 int EBUSY ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int EISCONN ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  HCI_LE_CONN_TIMEOUT ; 
 int /*<<< orphan*/  HCI_ROLE_SLAVE ; 
 scalar_t__ FUNC1 (struct hci_conn*) ; 
 scalar_t__ L2CAP_CHAN_CONN_ORIENTED ; 
 scalar_t__ L2CAP_CHAN_FIXED ; 
 scalar_t__ L2CAP_CHAN_RAW ; 
#define  L2CAP_MODE_BASIC 131 
#define  L2CAP_MODE_ERTM 130 
#define  L2CAP_MODE_LE_FLOWCTL 129 
#define  L2CAP_MODE_STREAMING 128 
 int FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,struct l2cap_chan*) ; 
 scalar_t__ FUNC5 (struct l2cap_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_conn*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chan_list_lock ; 
 int /*<<< orphan*/  disable_ertm ; 
 int /*<<< orphan*/  FUNC11 (struct hci_conn*) ; 
 struct hci_conn* FUNC12 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC13 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC14 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*) ; 
 scalar_t__ FUNC17 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct hci_dev*) ; 
 struct hci_dev* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC23 (struct l2cap_chan*) ; 
 struct l2cap_conn* FUNC24 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC25 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC26 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC27 (struct l2cap_chan*,int const) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

int FUNC33(struct l2cap_chan *chan, __le16 psm, u16 cid,
		       bdaddr_t *dst, u8 dst_type)
{
	struct l2cap_conn *conn;
	struct hci_conn *hcon;
	struct hci_dev *hdev;
	int err;

	FUNC0("%pMR -> %pMR (type %u) psm 0x%2.2x", &chan->src, dst,
	       dst_type, FUNC6(psm));

	hdev = FUNC19(dst, &chan->src, chan->src_type);
	if (!hdev)
		return -EHOSTUNREACH;

	FUNC15(hdev);

	if (!FUNC20(FUNC6(psm), dst_type) && !cid &&
	    chan->chan_type != L2CAP_CHAN_RAW) {
		err = -EINVAL;
		goto done;
	}

	if (chan->chan_type == L2CAP_CHAN_CONN_ORIENTED && !psm) {
		err = -EINVAL;
		goto done;
	}

	if (chan->chan_type == L2CAP_CHAN_FIXED && !cid) {
		err = -EINVAL;
		goto done;
	}

	switch (chan->mode) {
	case L2CAP_MODE_BASIC:
		break;
	case L2CAP_MODE_LE_FLOWCTL:
		break;
	case L2CAP_MODE_ERTM:
	case L2CAP_MODE_STREAMING:
		if (!disable_ertm)
			break;
		/* fall through */
	default:
		err = -EOPNOTSUPP;
		goto done;
	}

	switch (chan->state) {
	case BT_CONNECT:
	case BT_CONNECT2:
	case BT_CONFIG:
		/* Already connecting */
		err = 0;
		goto done;

	case BT_CONNECTED:
		/* Already connected */
		err = -EISCONN;
		goto done;

	case BT_OPEN:
	case BT_BOUND:
		/* Can connect */
		break;

	default:
		err = -EBADFD;
		goto done;
	}

	/* Set destination address and psm */
	FUNC8(&chan->dst, dst);
	chan->dst_type = dst_type;

	chan->psm = psm;
	chan->dcid = cid;

	if (FUNC10(dst_type)) {
		/* Convert from L2CAP channel address type to HCI address type
		 */
		if (dst_type == BDADDR_LE_PUBLIC)
			dst_type = ADDR_LE_DEV_PUBLIC;
		else
			dst_type = ADDR_LE_DEV_RANDOM;

		if (FUNC17(hdev, HCI_ADVERTISING))
			hcon = FUNC13(hdev, dst, dst_type,
					      chan->sec_level,
					      HCI_LE_CONN_TIMEOUT,
					      HCI_ROLE_SLAVE, NULL);
		else
			hcon = FUNC14(hdev, dst, dst_type,
						   chan->sec_level,
						   HCI_LE_CONN_TIMEOUT);

	} else {
		u8 auth_type = FUNC26(chan);
		hcon = FUNC12(hdev, dst, chan->sec_level, auth_type);
	}

	if (FUNC1(hcon)) {
		err = FUNC2(hcon);
		goto done;
	}

	conn = FUNC24(hcon);
	if (!conn) {
		FUNC11(hcon);
		err = -ENOMEM;
		goto done;
	}

	FUNC28(&conn->chan_lock);
	FUNC22(chan);

	if (cid && FUNC5(conn, cid)) {
		FUNC11(hcon);
		err = -EBUSY;
		goto chan_unlock;
	}

	/* Update source addr of the socket */
	FUNC8(&chan->src, &hcon->src);
	chan->src_type = FUNC9(hcon);

	FUNC4(conn, chan);

	/* l2cap_chan_add takes its own ref so we can drop this one */
	FUNC11(hcon);

	FUNC27(chan, BT_CONNECT);
	FUNC7(chan, chan->ops->get_sndtimeo(chan));

	/* Release chan->sport so that it can be reused by other
	 * sockets (as it's only used for listening sockets).
	 */
	FUNC31(&chan_list_lock);
	chan->sport = 0;
	FUNC32(&chan_list_lock);

	if (hcon->state == BT_CONNECTED) {
		if (chan->chan_type != L2CAP_CHAN_CONN_ORIENTED) {
			FUNC3(chan);
			if (FUNC21(chan, true))
				FUNC27(chan, BT_CONNECTED);
		} else
			FUNC25(chan);
	}

	err = 0;

chan_unlock:
	FUNC23(chan);
	FUNC29(&conn->chan_lock);
done:
	FUNC18(hdev);
	FUNC16(hdev);
	return err;
}