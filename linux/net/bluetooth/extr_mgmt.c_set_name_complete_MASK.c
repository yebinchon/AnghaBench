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
typedef  int /*<<< orphan*/  u16 ;
struct mgmt_pending_cmd {int /*<<< orphan*/  sk; struct mgmt_cp_set_local_name* param; } ;
struct mgmt_cp_set_local_name {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  MGMT_ADV_FLAG_LOCAL_NAME ; 
 int /*<<< orphan*/  MGMT_OP_SET_LOCAL_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_cp_set_local_name*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct mgmt_pending_cmd* FUNC9 (int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev, u8 status, u16 opcode)
{
	struct mgmt_cp_set_local_name *cp;
	struct mgmt_pending_cmd *cmd;

	FUNC0("status 0x%02x", status);

	FUNC2(hdev);

	cmd = FUNC9(MGMT_OP_SET_LOCAL_NAME, hdev);
	if (!cmd)
		goto unlock;

	cp = cmd->param;

	if (status) {
		FUNC6(cmd->sk, hdev->id, MGMT_OP_SET_LOCAL_NAME,
			        FUNC8(status));
	} else {
		FUNC5(cmd->sk, hdev->id, MGMT_OP_SET_LOCAL_NAME, 0,
				  cp, sizeof(*cp));

		if (FUNC3(hdev, HCI_LE_ADV))
			FUNC1(hdev, MGMT_ADV_FLAG_LOCAL_NAME);
	}

	FUNC7(cmd);

unlock:
	FUNC4(hdev);
}