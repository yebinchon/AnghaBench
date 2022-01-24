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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_hdr {int /*<<< orphan*/  len; int /*<<< orphan*/  cid; } ;
struct l2cap_conn {int /*<<< orphan*/  pending_rx; struct hci_conn* hcon; } ;
struct hci_conn {scalar_t__ state; scalar_t__ type; int /*<<< orphan*/  dst; TYPE_1__* hdev; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  blacklist; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  L2CAP_CID_CONN_LESS 130 
#define  L2CAP_CID_LE_SIGNALING 129 
#define  L2CAP_CID_SIGNALING 128 
 int /*<<< orphan*/  L2CAP_HDR_SIZE ; 
 int /*<<< orphan*/  L2CAP_PSMLEN_SIZE ; 
 scalar_t__ LE_LINK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*,scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct l2cap_hdr *lh = (void *) skb->data;
	struct hci_conn *hcon = conn->hcon;
	u16 cid, len;
	__le16 psm;

	if (hcon->state != BT_CONNECTED) {
		FUNC0("queueing pending rx skb");
		FUNC11(&conn->pending_rx, skb);
		return;
	}

	FUNC10(skb, L2CAP_HDR_SIZE);
	cid = FUNC1(lh->cid);
	len = FUNC1(lh->len);

	if (len != skb->len) {
		FUNC5(skb);
		return;
	}

	/* Since we can't actively block incoming LE connections we must
	 * at least ensure that we ignore incoming data from them.
	 */
	if (hcon->type == LE_LINK &&
	    FUNC4(&hcon->hdev->blacklist, &hcon->dst,
				   FUNC2(hcon))) {
		FUNC5(skb);
		return;
	}

	FUNC0("len %d, cid 0x%4.4x", len, cid);

	switch (cid) {
	case L2CAP_CID_SIGNALING:
		FUNC9(conn, skb);
		break;

	case L2CAP_CID_CONN_LESS:
		psm = FUNC3((__le16 *) skb->data);
		FUNC10(skb, L2CAP_PSMLEN_SIZE);
		FUNC6(conn, psm, skb);
		break;

	case L2CAP_CID_LE_SIGNALING:
		FUNC8(conn, skb);
		break;

	default:
		FUNC7(conn, cid, skb);
		break;
	}
}