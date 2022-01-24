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
struct mgmt_rp_unpair_device {TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  cmd_complete; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_unpair_device {int disconnect; TYPE_2__ addr; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;
struct hci_conn_params {int /*<<< orphan*/  auto_connect; scalar_t__ explicit_connect; } ;
struct hci_conn {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  rp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BDADDR_BREDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_AUTO_CONN_DISABLED ; 
 int /*<<< orphan*/  HCI_AUTO_CONN_EXPLICIT ; 
 int /*<<< orphan*/  HCI_CONN_PARAM_REMOVAL_PEND ; 
 int /*<<< orphan*/  HCI_ERROR_REMOTE_USER_TERM ; 
 int /*<<< orphan*/  MGMT_OP_UNPAIR_DEVICE ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_PAIRED ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 int /*<<< orphan*/  addr_cmd_complete ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__,struct sock*) ; 
 int FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn_params* FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int FUNC10 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct mgmt_rp_unpair_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_unpair_device*,int) ; 
 struct mgmt_pending_cmd* FUNC15 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_cp_unpair_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct sock *sk, struct hci_dev *hdev, void *data,
			 u16 len)
{
	struct mgmt_cp_unpair_device *cp = data;
	struct mgmt_rp_unpair_device rp;
	struct hci_conn_params *params;
	struct mgmt_pending_cmd *cmd;
	struct hci_conn *conn;
	u8 addr_type;
	int err;

	FUNC13(&rp, 0, sizeof(rp));
	FUNC0(&rp.addr.bdaddr, &cp->addr.bdaddr);
	rp.addr.type = cp->addr.type;

	if (!FUNC1(cp->addr.type))
		return FUNC14(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
					 MGMT_STATUS_INVALID_PARAMS,
					 &rp, sizeof(rp));

	if (cp->disconnect != 0x00 && cp->disconnect != 0x01)
		return FUNC14(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
					 MGMT_STATUS_INVALID_PARAMS,
					 &rp, sizeof(rp));

	FUNC8(hdev);

	if (!FUNC11(hdev)) {
		err = FUNC14(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
					MGMT_STATUS_NOT_POWERED, &rp,
					sizeof(rp));
		goto unlock;
	}

	if (cp->addr.type == BDADDR_BREDR) {
		/* If disconnection is requested, then look up the
		 * connection. If the remote device is connected, it
		 * will be later used to terminate the link.
		 *
		 * Setting it to NULL explicitly will cause no
		 * termination of the link.
		 */
		if (cp->disconnect)
			conn = FUNC4(hdev, ACL_LINK,
						       &cp->addr.bdaddr);
		else
			conn = NULL;

		err = FUNC10(hdev, &cp->addr.bdaddr);
		if (err < 0) {
			err = FUNC14(sk, hdev->id,
						MGMT_OP_UNPAIR_DEVICE,
						MGMT_STATUS_NOT_PAIRED, &rp,
						sizeof(rp));
			goto unlock;
		}

		goto done;
	}

	/* LE address type */
	addr_type = FUNC12(cp->addr.type);

	/* Abort any ongoing SMP pairing. Removes ltk and irk if they exist. */
	err = FUNC18(hdev, &cp->addr.bdaddr, addr_type);
	if (err < 0) {
		err = FUNC14(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE,
					MGMT_STATUS_NOT_PAIRED, &rp,
					sizeof(rp));
		goto unlock;
	}

	conn = FUNC5(hdev, &cp->addr.bdaddr, addr_type);
	if (!conn) {
		FUNC6(hdev, &cp->addr.bdaddr, addr_type);
		goto done;
	}


	/* Defer clearing up the connection parameters until closing to
	 * give a chance of keeping them if a repairing happens.
	 */
	FUNC17(HCI_CONN_PARAM_REMOVAL_PEND, &conn->flags);

	/* Disable auto-connection parameters if present */
	params = FUNC7(hdev, &cp->addr.bdaddr, addr_type);
	if (params) {
		if (params->explicit_connect)
			params->auto_connect = HCI_AUTO_CONN_EXPLICIT;
		else
			params->auto_connect = HCI_AUTO_CONN_DISABLED;
	}

	/* If disconnection is not requested, then clear the connection
	 * variable so that the link is not terminated.
	 */
	if (!cp->disconnect)
		conn = NULL;

done:
	/* If the connection variable is set, then termination of the
	 * link is requested.
	 */
	if (!conn) {
		err = FUNC14(sk, hdev->id, MGMT_OP_UNPAIR_DEVICE, 0,
					&rp, sizeof(rp));
		FUNC2(hdev, &cp->addr.bdaddr, cp->addr.type, sk);
		goto unlock;
	}

	cmd = FUNC15(sk, MGMT_OP_UNPAIR_DEVICE, hdev, cp,
			       sizeof(*cp));
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	cmd->cmd_complete = addr_cmd_complete;

	err = FUNC3(conn, HCI_ERROR_REMOTE_USER_TERM);
	if (err < 0)
		FUNC16(cmd);

unlock:
	FUNC9(hdev);
	return err;
}