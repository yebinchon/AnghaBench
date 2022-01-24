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
struct mgmt_rp_disconnect {TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  cmd_complete; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_disconnect {TYPE_2__ addr; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  flags; } ;
struct hci_conn {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BDADDR_BREDR ; 
 scalar_t__ BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ BT_OPEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_ERROR_REMOTE_USER_TERM ; 
 int /*<<< orphan*/  HCI_UP ; 
 int /*<<< orphan*/  MGMT_OP_DISCONNECT ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_CONNECTED ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  generic_cmd_complete ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct mgmt_rp_disconnect*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_disconnect*,int) ; 
 struct mgmt_pending_cmd* FUNC11 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mgmt_pending_cmd*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct hci_dev *hdev, void *data,
		      u16 len)
{
	struct mgmt_cp_disconnect *cp = data;
	struct mgmt_rp_disconnect rp;
	struct mgmt_pending_cmd *cmd;
	struct hci_conn *conn;
	int err;

	FUNC0("");

	FUNC9(&rp, 0, sizeof(rp));
	FUNC1(&rp.addr.bdaddr, &cp->addr.bdaddr);
	rp.addr.type = cp->addr.type;

	if (!FUNC2(cp->addr.type))
		return FUNC10(sk, hdev->id, MGMT_OP_DISCONNECT,
					 MGMT_STATUS_INVALID_PARAMS,
					 &rp, sizeof(rp));

	FUNC5(hdev);

	if (!FUNC14(HCI_UP, &hdev->flags)) {
		err = FUNC10(sk, hdev->id, MGMT_OP_DISCONNECT,
					MGMT_STATUS_NOT_POWERED, &rp,
					sizeof(rp));
		goto failed;
	}

	if (FUNC13(MGMT_OP_DISCONNECT, hdev)) {
		err = FUNC10(sk, hdev->id, MGMT_OP_DISCONNECT,
					MGMT_STATUS_BUSY, &rp, sizeof(rp));
		goto failed;
	}

	if (cp->addr.type == BDADDR_BREDR)
		conn = FUNC3(hdev, ACL_LINK,
					       &cp->addr.bdaddr);
	else
		conn = FUNC4(hdev, &cp->addr.bdaddr,
					       FUNC8(cp->addr.type));

	if (!conn || conn->state == BT_OPEN || conn->state == BT_CLOSED) {
		err = FUNC10(sk, hdev->id, MGMT_OP_DISCONNECT,
					MGMT_STATUS_NOT_CONNECTED, &rp,
					sizeof(rp));
		goto failed;
	}

	cmd = FUNC11(sk, MGMT_OP_DISCONNECT, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	cmd->cmd_complete = generic_cmd_complete;

	err = FUNC7(conn, HCI_ERROR_REMOTE_USER_TERM);
	if (err < 0)
		FUNC12(cmd);

failed:
	FUNC6(hdev);
	return err;
}