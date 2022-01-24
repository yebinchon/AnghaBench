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
struct sk_buff {int dummy; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  sk; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  MGMT_OP_SET_PHY_CONFIGURATION ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct mgmt_pending_cmd* FUNC8 (int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static void FUNC9(struct hci_dev *hdev, u8 status,
				     u16 opcode, struct sk_buff *skb)
{
	struct mgmt_pending_cmd *cmd;

	FUNC0("status 0x%02x", status);

	FUNC1(hdev);

	cmd = FUNC8(MGMT_OP_SET_PHY_CONFIGURATION, hdev);
	if (!cmd)
		goto unlock;

	if (status) {
		FUNC4(cmd->sk, hdev->id,
				MGMT_OP_SET_PHY_CONFIGURATION,
				FUNC7(status));
	} else {
		FUNC3(cmd->sk, hdev->id,
				  MGMT_OP_SET_PHY_CONFIGURATION, 0,
				  NULL, 0);

		FUNC6(hdev, cmd->sk);
	}

	FUNC5(cmd);

unlock:
	FUNC2(hdev);
}