#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct mgmt_pending_cmd {int /*<<< orphan*/  (* cmd_complete ) (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ;struct mgmt_cp_disconnect* param; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_disconnect {TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_OP_DISCONNECT ; 
 int /*<<< orphan*/  MGMT_OP_UNPAIR_DEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct mgmt_pending_cmd* FUNC5 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unpair_device_rsp ; 

void FUNC7(struct hci_dev *hdev, bdaddr_t *bdaddr,
			    u8 link_type, u8 addr_type, u8 status)
{
	u8 bdaddr_type = FUNC1(link_type, addr_type);
	struct mgmt_cp_disconnect *cp;
	struct mgmt_pending_cmd *cmd;

	FUNC2(MGMT_OP_UNPAIR_DEVICE, hdev, unpair_device_rsp,
			     hdev);

	cmd = FUNC5(MGMT_OP_DISCONNECT, hdev);
	if (!cmd)
		return;

	cp = cmd->param;

	if (FUNC0(bdaddr, &cp->addr.bdaddr))
		return;

	if (cp->addr.type != bdaddr_type)
		return;

	cmd->cmd_complete(cmd, FUNC4(status));
	FUNC3(cmd);
}