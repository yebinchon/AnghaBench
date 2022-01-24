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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_rp_pair_device {TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  index; int /*<<< orphan*/  sk; struct hci_conn* user_data; } ;
struct hci_conn {int /*<<< orphan*/  flags; int /*<<< orphan*/ * disconn_cfm_cb; int /*<<< orphan*/ * security_cfm_cb; int /*<<< orphan*/ * connect_cfm_cb; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_CONN_PARAM_REMOVAL_PEND ; 
 int /*<<< orphan*/  MGMT_OP_PAIR_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_pair_device*,int) ; 

__attribute__((used)) static int FUNC6(struct mgmt_pending_cmd *cmd, u8 status)
{
	struct mgmt_rp_pair_device rp;
	struct hci_conn *conn = cmd->user_data;
	int err;

	FUNC0(&rp.addr.bdaddr, &conn->dst);
	rp.addr.type = FUNC4(conn->type, conn->dst_type);

	err = FUNC5(cmd->sk, cmd->index, MGMT_OP_PAIR_DEVICE,
				status, &rp, sizeof(rp));

	/* So we don't get further callbacks for this connection */
	conn->connect_cfm_cb = NULL;
	conn->security_cfm_cb = NULL;
	conn->disconn_cfm_cb = NULL;

	FUNC2(conn);

	/* The device is paired so there is no need to remove
	 * its connection parameters anymore.
	 */
	FUNC1(HCI_CONN_PARAM_REMOVAL_PEND, &conn->flags);

	FUNC3(conn);

	return err;
}