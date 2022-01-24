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
struct mgmt_rp_get_clock_info {int /*<<< orphan*/  accuracy; void* piconet_clock; void* local_clock; int /*<<< orphan*/  addr; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  opcode; int /*<<< orphan*/  index; int /*<<< orphan*/  sk; int /*<<< orphan*/  param; struct hci_conn* user_data; } ;
struct hci_dev {int /*<<< orphan*/  clock; } ;
struct hci_conn {int /*<<< orphan*/  clock_accuracy; int /*<<< orphan*/  clock; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 struct hci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mgmt_rp_get_clock_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct mgmt_rp_get_clock_info*,int) ; 

__attribute__((used)) static int FUNC9(struct mgmt_pending_cmd *cmd, u8 status)
{
	struct hci_conn *conn = cmd->user_data;
	struct mgmt_rp_get_clock_info rp;
	struct hci_dev *hdev;
	int err;

	FUNC7(&rp, 0, sizeof(rp));
	FUNC6(&rp.addr, cmd->param, sizeof(rp.addr));

	if (status)
		goto complete;

	hdev = FUNC4(cmd->index);
	if (hdev) {
		rp.local_clock = FUNC1(hdev->clock);
		FUNC5(hdev);
	}

	if (conn) {
		rp.piconet_clock = FUNC1(conn->clock);
		rp.accuracy = FUNC0(conn->clock_accuracy);
	}

complete:
	err = FUNC8(cmd->sk, cmd->index, cmd->opcode, status, &rp,
				sizeof(rp));

	if (conn) {
		FUNC2(conn);
		FUNC3(conn);
	}

	return err;
}