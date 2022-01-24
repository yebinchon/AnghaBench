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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_rp_pair_device {TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  (* cmd_complete ) (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  user_data; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_pair_device {scalar_t__ io_cap; TYPE_2__ addr; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;
struct hci_conn_params {scalar_t__ auto_connect; } ;
struct hci_conn {scalar_t__ io_capability; scalar_t__ state; void* disconn_cfm_cb; void* security_cfm_cb; void* connect_cfm_cb; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 scalar_t__ BDADDR_BREDR ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_SECURITY_MEDIUM ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  HCI_AT_DEDICATED_BONDING ; 
 scalar_t__ HCI_AUTO_CONN_DISABLED ; 
 scalar_t__ HCI_AUTO_CONN_EXPLICIT ; 
 int /*<<< orphan*/  HCI_LE_CONN_TIMEOUT ; 
 scalar_t__ FUNC1 (struct hci_conn*) ; 
 int /*<<< orphan*/  MGMT_OP_PAIR_DEVICE ; 
 int MGMT_STATUS_ALREADY_PAIRED ; 
 int MGMT_STATUS_BUSY ; 
 int MGMT_STATUS_CONNECT_FAILED ; 
 int MGMT_STATUS_INVALID_PARAMS ; 
 int MGMT_STATUS_NOT_POWERED ; 
 int MGMT_STATUS_NOT_SUPPORTED ; 
 int MGMT_STATUS_REJECTED ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 scalar_t__ SMP_IO_KEYBOARD_DISPLAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*) ; 
 struct hci_conn_params* FUNC8 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct hci_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hci_conn* FUNC10 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC11 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 void* le_pairing_complete_cb ; 
 int /*<<< orphan*/  FUNC16 (struct mgmt_rp_pair_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct mgmt_rp_pair_device*,int) ; 
 struct mgmt_pending_cmd* FUNC18 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC20 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 
 void* pairing_complete_cb ; 
 int /*<<< orphan*/  FUNC21 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct sock *sk, struct hci_dev *hdev, void *data,
		       u16 len)
{
	struct mgmt_cp_pair_device *cp = data;
	struct mgmt_rp_pair_device rp;
	struct mgmt_pending_cmd *cmd;
	u8 sec_level, auth_type;
	struct hci_conn *conn;
	int err;

	FUNC0("");

	FUNC16(&rp, 0, sizeof(rp));
	FUNC3(&rp.addr.bdaddr, &cp->addr.bdaddr);
	rp.addr.type = cp->addr.type;

	if (!FUNC4(cp->addr.type))
		return FUNC17(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
					 MGMT_STATUS_INVALID_PARAMS,
					 &rp, sizeof(rp));

	if (cp->io_cap > SMP_IO_KEYBOARD_DISPLAY)
		return FUNC17(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
					 MGMT_STATUS_INVALID_PARAMS,
					 &rp, sizeof(rp));

	FUNC12(hdev);

	if (!FUNC14(hdev)) {
		err = FUNC17(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
					MGMT_STATUS_NOT_POWERED, &rp,
					sizeof(rp));
		goto unlock;
	}

	if (FUNC5(hdev, &cp->addr.bdaddr, cp->addr.type)) {
		err = FUNC17(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
					MGMT_STATUS_ALREADY_PAIRED, &rp,
					sizeof(rp));
		goto unlock;
	}

	sec_level = BT_SECURITY_MEDIUM;
	auth_type = HCI_AT_DEDICATED_BONDING;

	if (cp->addr.type == BDADDR_BREDR) {
		conn = FUNC10(hdev, &cp->addr.bdaddr, sec_level,
				       auth_type);
	} else {
		u8 addr_type = FUNC15(cp->addr.type);
		struct hci_conn_params *p;

		/* When pairing a new device, it is expected to remember
		 * this device for future connections. Adding the connection
		 * parameter information ahead of time allows tracking
		 * of the slave preferred values and will speed up any
		 * further connection establishment.
		 *
		 * If connection parameters already exist, then they
		 * will be kept and this function does nothing.
		 */
		p = FUNC8(hdev, &cp->addr.bdaddr, addr_type);

		if (p->auto_connect == HCI_AUTO_CONN_EXPLICIT)
			p->auto_connect = HCI_AUTO_CONN_DISABLED;

		conn = FUNC11(hdev, &cp->addr.bdaddr,
					   addr_type, sec_level,
					   HCI_LE_CONN_TIMEOUT);
	}

	if (FUNC1(conn)) {
		int status;

		if (FUNC2(conn) == -EBUSY)
			status = MGMT_STATUS_BUSY;
		else if (FUNC2(conn) == -EOPNOTSUPP)
			status = MGMT_STATUS_NOT_SUPPORTED;
		else if (FUNC2(conn) == -ECONNREFUSED)
			status = MGMT_STATUS_REJECTED;
		else
			status = MGMT_STATUS_CONNECT_FAILED;

		err = FUNC17(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
					status, &rp, sizeof(rp));
		goto unlock;
	}

	if (conn->connect_cfm_cb) {
		FUNC6(conn);
		err = FUNC17(sk, hdev->id, MGMT_OP_PAIR_DEVICE,
					MGMT_STATUS_BUSY, &rp, sizeof(rp));
		goto unlock;
	}

	cmd = FUNC18(sk, MGMT_OP_PAIR_DEVICE, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		FUNC6(conn);
		goto unlock;
	}

	cmd->cmd_complete = pairing_complete;

	/* For LE, just connecting isn't a proof that the pairing finished */
	if (cp->addr.type == BDADDR_BREDR) {
		conn->connect_cfm_cb = pairing_complete_cb;
		conn->security_cfm_cb = pairing_complete_cb;
		conn->disconn_cfm_cb = pairing_complete_cb;
	} else {
		conn->connect_cfm_cb = le_pairing_complete_cb;
		conn->security_cfm_cb = le_pairing_complete_cb;
		conn->disconn_cfm_cb = le_pairing_complete_cb;
	}

	conn->io_capability = cp->io_cap;
	cmd->user_data = FUNC7(conn);

	if ((conn->state == BT_CONNECTED || conn->state == BT_CONFIG) &&
	    FUNC9(conn, sec_level, auth_type, true)) {
		cmd->cmd_complete(cmd, 0);
		FUNC19(cmd);
	}

	err = 0;

unlock:
	FUNC13(hdev);
	return err;
}