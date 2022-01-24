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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  (* cmd_complete ) (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ;struct hci_conn* user_data; } ;
struct mgmt_addr_info {int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;
struct hci_conn {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MGMT_OP_CANCEL_PAIR_DEVICE ; 
 int /*<<< orphan*/  MGMT_OP_PAIR_DEVICE ; 
 int /*<<< orphan*/  MGMT_STATUS_CANCELLED ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_addr_info*,int) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mgmt_pending_cmd*) ; 
 struct mgmt_pending_cmd* FUNC8 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct hci_dev *hdev, void *data,
			      u16 len)
{
	struct mgmt_addr_info *addr = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_conn *conn;
	int err;

	FUNC0("");

	FUNC2(hdev);

	if (!FUNC4(hdev)) {
		err = FUNC6(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE,
				      MGMT_STATUS_NOT_POWERED);
		goto unlock;
	}

	cmd = FUNC8(MGMT_OP_PAIR_DEVICE, hdev);
	if (!cmd) {
		err = FUNC6(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE,
				      MGMT_STATUS_INVALID_PARAMS);
		goto unlock;
	}

	conn = cmd->user_data;

	if (FUNC1(&addr->bdaddr, &conn->dst) != 0) {
		err = FUNC6(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE,
				      MGMT_STATUS_INVALID_PARAMS);
		goto unlock;
	}

	cmd->cmd_complete(cmd, MGMT_STATUS_CANCELLED);
	FUNC7(cmd);

	err = FUNC5(sk, hdev->id, MGMT_OP_CANCEL_PAIR_DEVICE, 0,
				addr, sizeof(*addr));
unlock:
	FUNC3(hdev);
	return err;
}