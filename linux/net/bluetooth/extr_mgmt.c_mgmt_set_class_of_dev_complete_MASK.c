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
struct hci_dev {int dummy; } ;
struct cmd_lookup {scalar_t__ sk; int /*<<< orphan*/  member_2; struct hci_dev* member_1; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_MGMT_DEV_CLASS_EVENTS ; 
 int /*<<< orphan*/  MGMT_EV_CLASS_OF_DEV_CHANGED ; 
 int /*<<< orphan*/  MGMT_OP_ADD_UUID ; 
 int /*<<< orphan*/  MGMT_OP_REMOVE_UUID ; 
 int /*<<< orphan*/  MGMT_OP_SET_DEV_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ ,struct cmd_lookup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sk_lookup ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct hci_dev *hdev, u8 *dev_class,
				    u8 status)
{
	struct cmd_lookup match = { NULL, hdev, FUNC3(status) };

	FUNC2(MGMT_OP_SET_DEV_CLASS, hdev, sk_lookup, &match);
	FUNC2(MGMT_OP_ADD_UUID, hdev, sk_lookup, &match);
	FUNC2(MGMT_OP_REMOVE_UUID, hdev, sk_lookup, &match);

	if (!status) {
		FUNC1(MGMT_EV_CLASS_OF_DEV_CHANGED, hdev, dev_class,
				   3, HCI_MGMT_DEV_CLASS_EVENTS, NULL);
		FUNC0(hdev, NULL);
	}

	if (match.sk)
		FUNC4(match.sk);
}