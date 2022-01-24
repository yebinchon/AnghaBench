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
struct mgmt_pending_cmd {int /*<<< orphan*/  sk; int /*<<< orphan*/  opcode; int /*<<< orphan*/  index; } ;
struct hci_dev {int discov_timeout; int /*<<< orphan*/  discov_off; int /*<<< orphan*/  req_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_LIMITED_DISCOVERABLE ; 
 int /*<<< orphan*/  MGMT_OP_SET_DISCOVERABLE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_pending_cmd*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC10 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hci_dev*) ; 

void FUNC13(struct hci_dev *hdev, u8 status)
{
	struct mgmt_pending_cmd *cmd;

	FUNC0("status 0x%02x", status);

	FUNC2(hdev);

	cmd = FUNC10(MGMT_OP_SET_DISCOVERABLE, hdev);
	if (!cmd)
		goto unlock;

	if (status) {
		u8 mgmt_err = FUNC7(status);
		FUNC5(cmd->sk, cmd->index, cmd->opcode, mgmt_err);
		FUNC1(hdev, HCI_LIMITED_DISCOVERABLE);
		goto remove_cmd;
	}

	if (FUNC3(hdev, HCI_DISCOVERABLE) &&
	    hdev->discov_timeout > 0) {
		int to = FUNC8(hdev->discov_timeout * 1000);
		FUNC11(hdev->req_workqueue, &hdev->discov_off, to);
	}

	FUNC12(cmd->sk, MGMT_OP_SET_DISCOVERABLE, hdev);
	FUNC9(hdev, cmd->sk);

remove_cmd:
	FUNC6(cmd);

unlock:
	FUNC4(hdev);
}