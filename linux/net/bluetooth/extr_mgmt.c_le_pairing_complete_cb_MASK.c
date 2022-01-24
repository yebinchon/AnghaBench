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
struct hci_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct mgmt_pending_cmd* FUNC1 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hci_conn *conn, u8 status)
{
	struct mgmt_pending_cmd *cmd;

	FUNC0("status %u", status);

	if (!status)
		return;

	cmd = FUNC1(conn);
	if (!cmd) {
		FUNC0("Unable to find a pending command");
		return;
	}

	cmd->cmd_complete(cmd, FUNC3(status));
	FUNC2(cmd);
}