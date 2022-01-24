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
struct mgmt_pending_cmd {int /*<<< orphan*/  sk; struct mgmt_mode* param; int /*<<< orphan*/  opcode; int /*<<< orphan*/  index; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_SC_ENABLED ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 int /*<<< orphan*/  MGMT_OP_SET_SECURE_CONN ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC9 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev, u8 status, u16 opcode)
{
	struct mgmt_pending_cmd *cmd;
	struct mgmt_mode *cp;

	FUNC0("%s status %u", hdev->name, status);

	FUNC2(hdev);

	cmd = FUNC9(MGMT_OP_SET_SECURE_CONN, hdev);
	if (!cmd)
		goto unlock;

	if (status) {
		FUNC5(cmd->sk, cmd->index, cmd->opcode,
			        FUNC7(status));
		goto remove;
	}

	cp = cmd->param;

	switch (cp->val) {
	case 0x00:
		FUNC1(hdev, HCI_SC_ENABLED);
		FUNC1(hdev, HCI_SC_ONLY);
		break;
	case 0x01:
		FUNC3(hdev, HCI_SC_ENABLED);
		FUNC1(hdev, HCI_SC_ONLY);
		break;
	case 0x02:
		FUNC3(hdev, HCI_SC_ENABLED);
		FUNC3(hdev, HCI_SC_ONLY);
		break;
	}

	FUNC10(cmd->sk, MGMT_OP_SET_SECURE_CONN, hdev);
	FUNC8(hdev, cmd->sk);

remove:
	FUNC6(cmd);
unlock:
	FUNC4(hdev);
}