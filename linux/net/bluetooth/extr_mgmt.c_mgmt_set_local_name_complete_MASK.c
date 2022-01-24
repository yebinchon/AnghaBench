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
struct mgmt_pending_cmd {int /*<<< orphan*/ * sk; } ;
struct mgmt_cp_set_local_name {int /*<<< orphan*/  short_name; int /*<<< orphan*/  name; } ;
struct hci_dev {int /*<<< orphan*/  dev_name; scalar_t__* short_name; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int HCI_MAX_NAME_LENGTH ; 
 int HCI_MAX_SHORT_NAME_LENGTH ; 
 int /*<<< orphan*/  HCI_MGMT_LOCAL_NAME_EVENTS ; 
 int /*<<< orphan*/  MGMT_EV_LOCAL_NAME_CHANGED ; 
 int /*<<< orphan*/  MGMT_OP_SET_LOCAL_NAME ; 
 int /*<<< orphan*/  MGMT_OP_SET_POWERED ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mgmt_cp_set_local_name*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_cp_set_local_name*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mgmt_pending_cmd* FUNC4 (int /*<<< orphan*/ ,struct hci_dev*) ; 

void FUNC5(struct hci_dev *hdev, u8 *name, u8 status)
{
	struct mgmt_cp_set_local_name ev;
	struct mgmt_pending_cmd *cmd;

	if (status)
		return;

	FUNC2(&ev, 0, sizeof(ev));
	FUNC1(ev.name, name, HCI_MAX_NAME_LENGTH);
	FUNC1(ev.short_name, hdev->short_name, HCI_MAX_SHORT_NAME_LENGTH);

	cmd = FUNC4(MGMT_OP_SET_LOCAL_NAME, hdev);
	if (!cmd) {
		FUNC1(hdev->dev_name, name, sizeof(hdev->dev_name));

		/* If this is a HCI command related to powering on the
		 * HCI dev don't send any mgmt signals.
		 */
		if (FUNC4(MGMT_OP_SET_POWERED, hdev))
			return;
	}

	FUNC3(MGMT_EV_LOCAL_NAME_CHANGED, hdev, &ev, sizeof(ev),
			   HCI_MGMT_LOCAL_NAME_EVENTS, cmd ? cmd->sk : NULL);
	FUNC0(hdev, cmd ? cmd->sk : NULL);
}