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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  cmd_complete; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_pin_code_reply {int pin_len; TYPE_1__* pin_code; TYPE_1__ addr; } ;
struct mgmt_cp_pin_code_neg_reply {int /*<<< orphan*/  addr; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;
struct hci_cp_pin_code_reply {int pin_len; int /*<<< orphan*/ * pin_code; int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {scalar_t__ pending_sec_level; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ BT_SECURITY_HIGH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_OP_PIN_CODE_REPLY ; 
 int /*<<< orphan*/  MGMT_OP_PIN_CODE_REPLY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_CONNECTED ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 int /*<<< orphan*/  addr_cmd_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int FUNC6 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_pin_code_reply*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC10 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mgmt_pending_cmd*) ; 
 int FUNC12 (struct sock*,struct hci_dev*,struct mgmt_cp_pin_code_neg_reply*) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct hci_dev *hdev, void *data,
			  u16 len)
{
	struct hci_conn *conn;
	struct mgmt_cp_pin_code_reply *cp = data;
	struct hci_cp_pin_code_reply reply;
	struct mgmt_pending_cmd *cmd;
	int err;

	FUNC0("");

	FUNC4(hdev);

	if (!FUNC7(hdev)) {
		err = FUNC9(sk, hdev->id, MGMT_OP_PIN_CODE_REPLY,
				      MGMT_STATUS_NOT_POWERED);
		goto failed;
	}

	conn = FUNC3(hdev, ACL_LINK, &cp->addr.bdaddr);
	if (!conn) {
		err = FUNC9(sk, hdev->id, MGMT_OP_PIN_CODE_REPLY,
				      MGMT_STATUS_NOT_CONNECTED);
		goto failed;
	}

	if (conn->pending_sec_level == BT_SECURITY_HIGH && cp->pin_len != 16) {
		struct mgmt_cp_pin_code_neg_reply ncp;

		FUNC8(&ncp.addr, &cp->addr, sizeof(ncp.addr));

		FUNC2(hdev, "PIN code is not 16 bytes long");

		err = FUNC12(sk, hdev, &ncp);
		if (err >= 0)
			err = FUNC9(sk, hdev->id, MGMT_OP_PIN_CODE_REPLY,
					      MGMT_STATUS_INVALID_PARAMS);

		goto failed;
	}

	cmd = FUNC10(sk, MGMT_OP_PIN_CODE_REPLY, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	cmd->cmd_complete = addr_cmd_complete;

	FUNC1(&reply.bdaddr, &cp->addr.bdaddr);
	reply.pin_len = cp->pin_len;
	FUNC8(reply.pin_code, cp->pin_code, sizeof(reply.pin_code));

	err = FUNC6(hdev, HCI_OP_PIN_CODE_REPLY, sizeof(reply), &reply);
	if (err < 0)
		FUNC11(cmd);

failed:
	FUNC5(hdev);
	return err;
}