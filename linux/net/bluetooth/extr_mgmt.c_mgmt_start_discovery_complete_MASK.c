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
struct mgmt_pending_cmd {int /*<<< orphan*/  (* cmd_complete ) (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ;} ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_OP_START_DISCOVERY ; 
 int /*<<< orphan*/  MGMT_OP_START_LIMITED_DISCOVERY ; 
 int /*<<< orphan*/  MGMT_OP_START_SERVICE_DISCOVERY ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC5 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 

void FUNC7(struct hci_dev *hdev, u8 status)
{
	struct mgmt_pending_cmd *cmd;

	FUNC0("status %d", status);

	FUNC1(hdev);

	cmd = FUNC5(MGMT_OP_START_DISCOVERY, hdev);
	if (!cmd)
		cmd = FUNC5(MGMT_OP_START_SERVICE_DISCOVERY, hdev);

	if (!cmd)
		cmd = FUNC5(MGMT_OP_START_LIMITED_DISCOVERY, hdev);

	if (cmd) {
		cmd->cmd_complete(cmd, FUNC4(status));
		FUNC3(cmd);
	}

	FUNC2(hdev);
}