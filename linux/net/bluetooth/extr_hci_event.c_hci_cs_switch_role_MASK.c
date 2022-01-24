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
typedef  int /*<<< orphan*/  u8 ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_switch_role {int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_RSWITCH_PEND ; 
 int /*<<< orphan*/  HCI_OP_SWITCH_ROLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 struct hci_cp_switch_role* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, u8 status)
{
	struct hci_cp_switch_role *cp;
	struct hci_conn *conn;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (!status)
		return;

	cp = FUNC5(hdev, HCI_OP_SWITCH_ROLE);
	if (!cp)
		return;

	FUNC3(hdev);

	conn = FUNC2(hdev, ACL_LINK, &cp->bdaddr);
	if (conn)
		FUNC1(HCI_CONN_RSWITCH_PEND, &conn->flags);

	FUNC4(hdev);
}