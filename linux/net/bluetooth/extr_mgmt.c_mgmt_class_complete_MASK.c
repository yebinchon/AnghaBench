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
typedef  int /*<<< orphan*/  u16 ;
struct mgmt_pending_cmd {int /*<<< orphan*/  opcode; int /*<<< orphan*/  index; int /*<<< orphan*/  sk; } ;
struct hci_dev {int /*<<< orphan*/  dev_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC5 (int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, u16 mgmt_op, u8 status)
{
	struct mgmt_pending_cmd *cmd;

	FUNC0(hdev);

	cmd = FUNC5(mgmt_op, hdev);
	if (!cmd)
		goto unlock;

	FUNC2(cmd->sk, cmd->index, cmd->opcode,
			  FUNC4(status), hdev->dev_class, 3);

	FUNC3(cmd);

unlock:
	FUNC1(hdev);
}