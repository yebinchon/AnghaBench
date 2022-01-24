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
typedef  int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_pin_code_req {int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ state; scalar_t__ pending_sec_level; int /*<<< orphan*/  flags; int /*<<< orphan*/  disc_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ BT_SECURITY_HIGH ; 
 int /*<<< orphan*/  HCI_BONDABLE ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_INITIATOR ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_PIN_CODE_NEG_REPLY ; 
 int /*<<< orphan*/  HCI_PAIRING_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_pin_code_req *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC4(hdev);

	conn = FUNC2(hdev, ACL_LINK, &ev->bdaddr);
	if (!conn)
		goto unlock;

	if (conn->state == BT_CONNECTED) {
		FUNC3(conn);
		conn->disc_timeout = HCI_PAIRING_TIMEOUT;
		FUNC1(conn);
	}

	if (!FUNC5(hdev, HCI_BONDABLE) &&
	    !FUNC9(HCI_CONN_AUTH_INITIATOR, &conn->flags)) {
		FUNC7(hdev, HCI_OP_PIN_CODE_NEG_REPLY,
			     sizeof(ev->bdaddr), &ev->bdaddr);
	} else if (FUNC5(hdev, HCI_MGMT)) {
		u8 secure;

		if (conn->pending_sec_level == BT_SECURITY_HIGH)
			secure = 1;
		else
			secure = 0;

		FUNC8(hdev, &ev->bdaddr, secure);
	}

unlock:
	FUNC6(hdev);
}