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
struct mgmt_pending_cmd {int /*<<< orphan*/  sk; struct mgmt_mode* param; } ;
struct mgmt_mode {scalar_t__ val; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  HCI_FAST_CONNECTABLE ; 
 int /*<<< orphan*/  MGMT_OP_SET_FAST_CONNECTABLE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC9 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev, u8 status,
				      u16 opcode)
{
	struct mgmt_pending_cmd *cmd;

	FUNC0("status 0x%02x", status);

	FUNC2(hdev);

	cmd = FUNC9(MGMT_OP_SET_FAST_CONNECTABLE, hdev);
	if (!cmd)
		goto unlock;

	if (status) {
		FUNC5(cmd->sk, hdev->id, MGMT_OP_SET_FAST_CONNECTABLE,
			        FUNC7(status));
	} else {
		struct mgmt_mode *cp = cmd->param;

		if (cp->val)
			FUNC3(hdev, HCI_FAST_CONNECTABLE);
		else
			FUNC1(hdev, HCI_FAST_CONNECTABLE);

		FUNC10(cmd->sk, MGMT_OP_SET_FAST_CONNECTABLE, hdev);
		FUNC8(hdev, cmd->sk);
	}

	FUNC6(cmd);

unlock:
	FUNC4(hdev);
}