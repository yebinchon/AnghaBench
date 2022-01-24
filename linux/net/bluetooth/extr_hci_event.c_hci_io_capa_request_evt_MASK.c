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
struct hci_ev_io_capa_request {int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_io_capability_reply {int capability; int authentication; int /*<<< orphan*/  reason; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  oob_data; } ;
struct hci_cp_io_capability_neg_reply {int capability; int authentication; int /*<<< orphan*/  reason; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  oob_data; } ;
struct hci_conn {int remote_auth; int io_capability; int auth_type; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int HCI_AT_NO_BONDING ; 
 int HCI_AT_NO_BONDING_MITM ; 
 int /*<<< orphan*/  HCI_BONDABLE ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_INITIATOR ; 
 int /*<<< orphan*/  HCI_ERROR_PAIRING_NOT_ALLOWED ; 
 int HCI_IO_DISPLAY_YESNO ; 
 int HCI_IO_NO_INPUT_OUTPUT ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_IO_CAPABILITY_NEG_REPLY ; 
 int /*<<< orphan*/  HCI_OP_IO_CAPABILITY_REPLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int FUNC8 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_io_capability_reply*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_io_capa_request *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC5(hdev);

	conn = FUNC3(hdev, ACL_LINK, &ev->bdaddr);
	if (!conn)
		goto unlock;

	FUNC4(conn);

	if (!FUNC6(hdev, HCI_MGMT))
		goto unlock;

	/* Allow pairing if we're pairable, the initiators of the
	 * pairing or if the remote is not requesting bonding.
	 */
	if (FUNC6(hdev, HCI_BONDABLE) ||
	    FUNC10(HCI_CONN_AUTH_INITIATOR, &conn->flags) ||
	    (conn->remote_auth & ~0x01) == HCI_AT_NO_BONDING) {
		struct hci_cp_io_capability_reply cp;

		FUNC1(&cp.bdaddr, &ev->bdaddr);
		/* Change the IO capability from KeyboardDisplay
		 * to DisplayYesNo as it is not supported by BT spec. */
		cp.capability = (conn->io_capability == 0x04) ?
				HCI_IO_DISPLAY_YESNO : conn->io_capability;

		/* If we are initiators, there is no remote information yet */
		if (conn->remote_auth == 0xff) {
			/* Request MITM protection if our IO caps allow it
			 * except for the no-bonding case.
			 */
			if (conn->io_capability != HCI_IO_NO_INPUT_OUTPUT &&
			    conn->auth_type != HCI_AT_NO_BONDING)
				conn->auth_type |= 0x01;
		} else {
			conn->auth_type = FUNC8(conn);
		}

		/* If we're not bondable, force one of the non-bondable
		 * authentication requirement values.
		 */
		if (!FUNC6(hdev, HCI_BONDABLE))
			conn->auth_type &= HCI_AT_NO_BONDING_MITM;

		cp.authentication = conn->auth_type;
		cp.oob_data = FUNC2(conn);

		FUNC9(hdev, HCI_OP_IO_CAPABILITY_REPLY,
			     sizeof(cp), &cp);
	} else {
		struct hci_cp_io_capability_neg_reply cp;

		FUNC1(&cp.bdaddr, &ev->bdaddr);
		cp.reason = HCI_ERROR_PAIRING_NOT_ALLOWED;

		FUNC9(hdev, HCI_OP_IO_CAPABILITY_NEG_REPLY,
			     sizeof(cp), &cp);
	}

unlock:
	FUNC7(hdev);
}