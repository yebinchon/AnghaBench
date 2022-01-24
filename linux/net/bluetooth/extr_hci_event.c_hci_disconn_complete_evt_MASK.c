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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_disconn_complete {int /*<<< orphan*/  reason; scalar_t__ status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  pend_le_conns; int /*<<< orphan*/  name; } ;
struct hci_conn_params {int auto_connect; int /*<<< orphan*/  action; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
#define  HCI_AUTO_CONN_ALWAYS 130 
#define  HCI_AUTO_CONN_DIRECT 129 
#define  HCI_AUTO_CONN_LINK_LOSS 128 
 int /*<<< orphan*/  HCI_CONN_AUTH_FAILURE ; 
 int /*<<< orphan*/  HCI_CONN_FLUSH_KEY ; 
 int /*<<< orphan*/  HCI_CONN_MGMT_CONNECTED ; 
 int /*<<< orphan*/  HCI_ERROR_CONNECTION_TIMEOUT ; 
 scalar_t__ LE_LINK ; 
 scalar_t__ MGMT_DEV_DISCONN_AUTH_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct hci_conn_params* FUNC4 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_disconn_complete *ev = (void *) skb->data;
	u8 reason;
	struct hci_conn_params *params;
	struct hci_conn *conn;
	bool mgmt_connected;
	u8 type;

	FUNC0("%s status 0x%2.2x", hdev->name, ev->status);

	FUNC5(hdev);

	conn = FUNC3(hdev, FUNC1(ev->handle));
	if (!conn)
		goto unlock;

	if (ev->status) {
		FUNC16(hdev, &conn->dst, conn->type,
				       conn->dst_type, ev->status);
		goto unlock;
	}

	conn->state = BT_CLOSED;

	mgmt_connected = FUNC17(HCI_CONN_MGMT_CONNECTED, &conn->flags);

	if (FUNC18(HCI_CONN_AUTH_FAILURE, &conn->flags))
		reason = MGMT_DEV_DISCONN_AUTH_FAILURE;
	else
		reason = FUNC11(ev->reason);

	FUNC15(hdev, &conn->dst, conn->type, conn->dst_type,
				reason, mgmt_connected);

	if (conn->type == ACL_LINK) {
		if (FUNC18(HCI_CONN_FLUSH_KEY, &conn->flags))
			FUNC8(hdev, &conn->dst);

		FUNC10(hdev);
	}

	params = FUNC4(hdev, &conn->dst, conn->dst_type);
	if (params) {
		switch (params->auto_connect) {
		case HCI_AUTO_CONN_LINK_LOSS:
			if (ev->reason != HCI_ERROR_CONNECTION_TIMEOUT)
				break;
			/* Fall through */

		case HCI_AUTO_CONN_DIRECT:
		case HCI_AUTO_CONN_ALWAYS:
			FUNC14(&params->action);
			FUNC13(&params->action, &hdev->pend_le_conns);
			FUNC12(hdev);
			break;

		default:
			break;
		}
	}

	type = conn->type;

	FUNC7(conn, ev->reason);
	FUNC2(conn);

	/* Re-enable advertising if necessary, since it might
	 * have been disabled by the connection. From the
	 * HCI_LE_Set_Advertise_Enable command description in
	 * the core specification (v4.0):
	 * "The Controller shall continue advertising until the Host
	 * issues an LE_Set_Advertise_Enable command with
	 * Advertising_Enable set to 0x00 (Advertising is disabled)
	 * or until a connection is created or until the Advertising
	 * is timed out due to Directed Advertising."
	 */
	if (type == LE_LINK)
		FUNC9(hdev);

unlock:
	FUNC6(hdev);
}