#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_rp_get_clock_info {int which; int /*<<< orphan*/  handle; TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  user_data; int /*<<< orphan*/  cmd_complete; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_get_clock_info {TYPE_2__ addr; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct hci_cp_read_clock {int which; int /*<<< orphan*/  handle; TYPE_1__ addr; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  rp ;
typedef  int /*<<< orphan*/  hci_cp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  BDADDR_ANY ; 
 scalar_t__ BDADDR_BREDR ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_OP_READ_CLOCK ; 
 int /*<<< orphan*/  MGMT_OP_GET_CLOCK_INFO ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_CONNECTED ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clock_info_cmd_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_clock_info_complete ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_request*,int /*<<< orphan*/ ,int,struct mgmt_rp_get_clock_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_request*,struct hci_dev*) ; 
 int FUNC11 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mgmt_rp_get_clock_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_get_clock_info*,int) ; 
 struct mgmt_pending_cmd* FUNC15 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mgmt_pending_cmd*) ; 

__attribute__((used)) static int FUNC17(struct sock *sk, struct hci_dev *hdev, void *data,
			 u16 len)
{
	struct mgmt_cp_get_clock_info *cp = data;
	struct mgmt_rp_get_clock_info rp;
	struct hci_cp_read_clock hci_cp;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	struct hci_conn *conn;
	int err;

	FUNC0("%s", hdev->name);

	FUNC13(&rp, 0, sizeof(rp));
	FUNC2(&rp.addr.bdaddr, &cp->addr.bdaddr);
	rp.addr.type = cp->addr.type;

	if (cp->addr.type != BDADDR_BREDR)
		return FUNC14(sk, hdev->id, MGMT_OP_GET_CLOCK_INFO,
					 MGMT_STATUS_INVALID_PARAMS,
					 &rp, sizeof(rp));

	FUNC7(hdev);

	if (!FUNC12(hdev)) {
		err = FUNC14(sk, hdev->id, MGMT_OP_GET_CLOCK_INFO,
					MGMT_STATUS_NOT_POWERED, &rp,
					sizeof(rp));
		goto unlock;
	}

	if (FUNC1(&cp->addr.bdaddr, BDADDR_ANY)) {
		conn = FUNC5(hdev, ACL_LINK,
					       &cp->addr.bdaddr);
		if (!conn || conn->state != BT_CONNECTED) {
			err = FUNC14(sk, hdev->id,
						MGMT_OP_GET_CLOCK_INFO,
						MGMT_STATUS_NOT_CONNECTED,
						&rp, sizeof(rp));
			goto unlock;
		}
	} else {
		conn = NULL;
	}

	cmd = FUNC15(sk, MGMT_OP_GET_CLOCK_INFO, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	cmd->cmd_complete = clock_info_cmd_complete;

	FUNC10(&req, hdev);

	FUNC13(&hci_cp, 0, sizeof(hci_cp));
	FUNC9(&req, HCI_OP_READ_CLOCK, sizeof(hci_cp), &hci_cp);

	if (conn) {
		FUNC6(conn);
		cmd->user_data = FUNC4(conn);

		hci_cp.handle = FUNC3(conn->handle);
		hci_cp.which = 0x01; /* Piconet clock */
		FUNC9(&req, HCI_OP_READ_CLOCK, sizeof(hci_cp), &hci_cp);
	}

	err = FUNC11(&req, get_clock_info_complete);
	if (err < 0)
		FUNC16(cmd);

unlock:
	FUNC8(hdev);
	return err;
}