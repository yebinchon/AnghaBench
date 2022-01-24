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
struct mgmt_pending_cmd {int /*<<< orphan*/  (* cmd_complete ) (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ;} ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_read_clock {int /*<<< orphan*/  handle; scalar_t__ which; } ;
struct hci_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_READ_CLOCK ; 
 int /*<<< orphan*/  MGMT_OP_GET_CLOCK_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 struct hci_cp_read_clock* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC8 (int /*<<< orphan*/ ,struct hci_dev*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev, u8 status, u16 opcode)
{
	struct hci_cp_read_clock *hci_cp;
	struct mgmt_pending_cmd *cmd;
	struct hci_conn *conn;

	FUNC0("%s status %u", hdev->name, status);

	FUNC3(hdev);

	hci_cp = FUNC5(hdev, HCI_OP_READ_CLOCK);
	if (!hci_cp)
		goto unlock;

	if (hci_cp->which) {
		u16 handle = FUNC1(hci_cp->handle);
		conn = FUNC2(hdev, handle);
	} else {
		conn = NULL;
	}

	cmd = FUNC8(MGMT_OP_GET_CLOCK_INFO, hdev, conn);
	if (!cmd)
		goto unlock;

	cmd->cmd_complete(cmd, FUNC7(status));
	FUNC6(cmd);

unlock:
	FUNC4(hdev);
}