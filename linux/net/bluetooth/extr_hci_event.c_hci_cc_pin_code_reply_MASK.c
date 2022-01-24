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
struct hci_rp_pin_code_reply {scalar_t__ status; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_pin_code_reply {int /*<<< orphan*/  pin_len; int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {int /*<<< orphan*/  pin_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_PIN_CODE_REPLY ; 
 struct hci_conn* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 struct hci_cp_pin_code_reply* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_pin_code_reply *rp = (void *) skb->data;
	struct hci_cp_pin_code_reply *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, rp->status);

	FUNC2(hdev);

	if (FUNC3(hdev, HCI_MGMT))
		FUNC6(hdev, &rp->bdaddr, rp->status);

	if (rp->status)
		goto unlock;

	cp = FUNC5(hdev, HCI_OP_PIN_CODE_REPLY);
	if (!cp)
		goto unlock;

	conn = FUNC1(hdev, ACL_LINK, &cp->bdaddr);
	if (conn)
		conn->pin_length = cp->pin_len;

unlock:
	FUNC4(hdev);
}