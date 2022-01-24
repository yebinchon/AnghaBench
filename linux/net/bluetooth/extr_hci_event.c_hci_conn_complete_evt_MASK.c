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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_conn_complete {scalar_t__ link_type; scalar_t__ status; int /*<<< orphan*/  handle; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {scalar_t__ hci_ver; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct hci_cp_read_remote_features {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  handle; } ;
struct hci_cp_change_conn_ptype {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; int /*<<< orphan*/  state; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  out; int /*<<< orphan*/  flags; int /*<<< orphan*/  disc_timeout; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 scalar_t__ BLUETOOTH_VER_2_0 ; 
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  BT_CONFIG ; 
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESCO_LINK ; 
 int /*<<< orphan*/  HCI_AUTH ; 
 int /*<<< orphan*/  HCI_CONN_AUTH ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT ; 
 int /*<<< orphan*/  HCI_DISCONN_TIMEOUT ; 
 int /*<<< orphan*/  HCI_ENCRYPT ; 
 int /*<<< orphan*/  HCI_OP_CHANGE_CONN_PTYPE ; 
 int /*<<< orphan*/  HCI_OP_READ_REMOTE_FEATURES ; 
 int /*<<< orphan*/  HCI_PAIRING_TIMEOUT ; 
 scalar_t__ SCO_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 struct hci_conn* FUNC6 (struct hci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_read_remote_features*) ; 
 int /*<<< orphan*/  FUNC17 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_conn_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC11(hdev);

	conn = FUNC6(hdev, ev->link_type, &ev->bdaddr);
	if (!conn) {
		if (ev->link_type != SCO_LINK)
			goto unlock;

		conn = FUNC6(hdev, ESCO_LINK, &ev->bdaddr);
		if (!conn)
			goto unlock;

		conn->type = SCO_LINK;
	}

	if (!ev->status) {
		conn->handle = FUNC1(ev->handle);

		if (conn->type == ACL_LINK) {
			conn->state = BT_CONFIG;
			FUNC7(conn);

			if (!conn->out && !FUNC8(conn) &&
			    !FUNC13(hdev, &ev->bdaddr))
				conn->disc_timeout = HCI_PAIRING_TIMEOUT;
			else
				conn->disc_timeout = HCI_DISCONN_TIMEOUT;
		} else
			conn->state = BT_CONNECTED;

		FUNC10(conn);
		FUNC3(conn);

		if (FUNC19(HCI_AUTH, &hdev->flags))
			FUNC18(HCI_CONN_AUTH, &conn->flags);

		if (FUNC19(HCI_ENCRYPT, &hdev->flags))
			FUNC18(HCI_CONN_ENCRYPT, &conn->flags);

		/* Get remote features */
		if (conn->type == ACL_LINK) {
			struct hci_cp_read_remote_features cp;
			cp.handle = ev->handle;
			FUNC16(hdev, HCI_OP_READ_REMOTE_FEATURES,
				     sizeof(cp), &cp);

			FUNC14(hdev);
		}

		/* Set packet type for incoming connection */
		if (!conn->out && hdev->hci_ver < BLUETOOTH_VER_2_0) {
			struct hci_cp_change_conn_ptype cp;
			cp.handle = ev->handle;
			cp.pkt_type = FUNC2(conn->pkt_type);
			FUNC16(hdev, HCI_OP_CHANGE_CONN_PTYPE, sizeof(cp),
				     &cp);
		}
	} else {
		conn->state = BT_CLOSED;
		if (conn->type == ACL_LINK)
			FUNC17(hdev, &conn->dst, conn->type,
					    conn->dst_type, ev->status);
	}

	if (conn->type == ACL_LINK)
		FUNC15(conn, ev->status);

	if (ev->status) {
		FUNC9(conn, ev->status);
		FUNC5(conn);
	} else if (ev->link_type != ACL_LINK)
		FUNC9(conn, ev->status);

unlock:
	FUNC12(hdev);

	FUNC4(hdev);
}