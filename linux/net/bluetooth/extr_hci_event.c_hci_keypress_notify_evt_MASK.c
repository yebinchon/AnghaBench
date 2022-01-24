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
struct hci_ev_keypress_notify {int type; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  passkey_entered; int /*<<< orphan*/  passkey_notify; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  HCI_KEYPRESS_CLEARED 132 
#define  HCI_KEYPRESS_COMPLETED 131 
#define  HCI_KEYPRESS_ENTERED 130 
#define  HCI_KEYPRESS_ERASED 129 
#define  HCI_KEYPRESS_STARTED 128 
 int /*<<< orphan*/  HCI_MGMT ; 
 struct hci_conn* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_keypress_notify *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	conn = FUNC1(hdev, ACL_LINK, &ev->bdaddr);
	if (!conn)
		return;

	switch (ev->type) {
	case HCI_KEYPRESS_STARTED:
		conn->passkey_entered = 0;
		return;

	case HCI_KEYPRESS_ENTERED:
		conn->passkey_entered++;
		break;

	case HCI_KEYPRESS_ERASED:
		conn->passkey_entered--;
		break;

	case HCI_KEYPRESS_CLEARED:
		conn->passkey_entered = 0;
		break;

	case HCI_KEYPRESS_COMPLETED:
		return;
	}

	if (FUNC2(hdev, HCI_MGMT))
		FUNC3(hdev, &conn->dst, conn->type,
					 conn->dst_type, conn->passkey_notify,
					 conn->passkey_entered);
}