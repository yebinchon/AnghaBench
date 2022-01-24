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
struct mgmt_pending_cmd {struct mgmt_mode* param; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_LIMITED_DISCOVERABLE ; 
 int /*<<< orphan*/  LE_AD_GENERAL ; 
 int /*<<< orphan*/  LE_AD_LIMITED ; 
 int /*<<< orphan*/  MGMT_OP_SET_DISCOVERABLE ; 
 scalar_t__ FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC1 (int /*<<< orphan*/ ,struct hci_dev*) ; 

u8 FUNC2(struct hci_dev *hdev)
{
	struct mgmt_pending_cmd *cmd;

	/* If there's a pending mgmt command the flags will not yet have
	 * their final values, so check for this first.
	 */
	cmd = FUNC1(MGMT_OP_SET_DISCOVERABLE, hdev);
	if (cmd) {
		struct mgmt_mode *cp = cmd->param;
		if (cp->val == 0x01)
			return LE_AD_GENERAL;
		else if (cp->val == 0x02)
			return LE_AD_LIMITED;
	} else {
		if (FUNC0(hdev, HCI_LIMITED_DISCOVERABLE))
			return LE_AD_LIMITED;
		else if (FUNC0(hdev, HCI_DISCOVERABLE))
			return LE_AD_GENERAL;
	}

	return 0;
}