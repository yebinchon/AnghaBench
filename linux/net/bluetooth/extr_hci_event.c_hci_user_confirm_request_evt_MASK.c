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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_user_confirm_req {int /*<<< orphan*/  passkey; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {scalar_t__ name; scalar_t__ auto_accept_delay; } ;
struct hci_conn {int auth_type; int remote_auth; scalar_t__ pending_sec_level; scalar_t__ remote_cap; scalar_t__ io_capability; int /*<<< orphan*/  auto_accept_work; TYPE_1__* hdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ BT_SECURITY_MEDIUM ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 scalar_t__ HCI_IO_NO_INPUT_OUTPUT ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_USER_CONFIRM_NEG_REPLY ; 
 int /*<<< orphan*/  HCI_OP_USER_CONFIRM_REPLY ; 
 struct hci_conn* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev,
					 struct sk_buff *skb)
{
	struct hci_ev_user_confirm_req *ev = (void *) skb->data;
	int loc_mitm, rem_mitm, confirm_hint = 0;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC2(hdev);

	if (!FUNC3(hdev, HCI_MGMT))
		goto unlock;

	conn = FUNC1(hdev, ACL_LINK, &ev->bdaddr);
	if (!conn)
		goto unlock;

	loc_mitm = (conn->auth_type & 0x01);
	rem_mitm = (conn->remote_auth & 0x01);

	/* If we require MITM but the remote device can't provide that
	 * (it has NoInputNoOutput) then reject the confirmation
	 * request. We check the security level here since it doesn't
	 * necessarily match conn->auth_type.
	 */
	if (conn->pending_sec_level > BT_SECURITY_MEDIUM &&
	    conn->remote_cap == HCI_IO_NO_INPUT_OUTPUT) {
		FUNC0("Rejecting request: remote device can't provide MITM");
		FUNC5(hdev, HCI_OP_USER_CONFIRM_NEG_REPLY,
			     sizeof(ev->bdaddr), &ev->bdaddr);
		goto unlock;
	}

	/* If no side requires MITM protection; auto-accept */
	if ((!loc_mitm || conn->remote_cap == HCI_IO_NO_INPUT_OUTPUT) &&
	    (!rem_mitm || conn->io_capability == HCI_IO_NO_INPUT_OUTPUT)) {

		/* If we're not the initiators request authorization to
		 * proceed from user space (mgmt_user_confirm with
		 * confirm_hint set to 1). The exception is if neither
		 * side had MITM or if the local IO capability is
		 * NoInputNoOutput, in which case we do auto-accept
		 */
		if (!FUNC10(HCI_CONN_AUTH_PEND, &conn->flags) &&
		    conn->io_capability != HCI_IO_NO_INPUT_OUTPUT &&
		    (loc_mitm || rem_mitm)) {
			FUNC0("Confirming auto-accept as acceptor");
			confirm_hint = 1;
			goto confirm;
		}

		FUNC0("Auto-accept of user confirmation with %ums delay",
		       hdev->auto_accept_delay);

		if (hdev->auto_accept_delay > 0) {
			int delay = FUNC8(hdev->auto_accept_delay);
			FUNC9(conn->hdev->workqueue,
					   &conn->auto_accept_work, delay);
			goto unlock;
		}

		FUNC5(hdev, HCI_OP_USER_CONFIRM_REPLY,
			     sizeof(ev->bdaddr), &ev->bdaddr);
		goto unlock;
	}

confirm:
	FUNC7(hdev, &ev->bdaddr, ACL_LINK, 0,
				  FUNC6(ev->passkey), confirm_hint);

unlock:
	FUNC4(hdev);
}