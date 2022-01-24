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
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  MGMT_OP_SET_CONNECTABLE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_pending_cmd*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC7 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hci_dev*) ; 

void FUNC9(struct hci_dev *hdev, u8 status)
{
	struct mgmt_pending_cmd *cmd;

	FUNC0("status 0x%02x", status);

	FUNC1(hdev);

	cmd = FUNC7(MGMT_OP_SET_CONNECTABLE, hdev);
	if (!cmd)
		goto unlock;

	if (status) {
		u8 mgmt_err = FUNC5(status);
		FUNC3(cmd->sk, cmd->index, cmd->opcode, mgmt_err);
		goto remove_cmd;
	}

	FUNC8(cmd->sk, MGMT_OP_SET_CONNECTABLE, hdev);
	FUNC6(hdev, cmd->sk);

remove_cmd:
	FUNC4(cmd);

unlock:
	FUNC2(hdev);
}