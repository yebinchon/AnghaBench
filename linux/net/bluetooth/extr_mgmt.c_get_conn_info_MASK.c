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
struct mgmt_rp_get_conn_info {scalar_t__ tx_power; scalar_t__ max_tx_power; int /*<<< orphan*/  rssi; TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  user_data; } ;
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_get_conn_info {TYPE_2__ addr; } ;
struct hci_request {int dummy; } ;
struct hci_dev {unsigned long conn_info_min_age; int /*<<< orphan*/  id; scalar_t__ conn_info_max_age; int /*<<< orphan*/  name; } ;
struct hci_cp_read_tx_power {int type; void* handle; } ;
struct hci_cp_read_rssi {int type; void* handle; } ;
struct hci_conn {scalar_t__ state; scalar_t__ tx_power; scalar_t__ max_tx_power; int /*<<< orphan*/  rssi; scalar_t__ conn_info_timestamp; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  rp ;
typedef  int /*<<< orphan*/  req_txp_cp ;
typedef  int /*<<< orphan*/  req_rssi_cp ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BDADDR_BREDR ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_OP_READ_RSSI ; 
 int /*<<< orphan*/  HCI_OP_READ_TX_POWER ; 
 scalar_t__ HCI_TX_POWER_INVALID ; 
 int /*<<< orphan*/  LE_LINK ; 
 int /*<<< orphan*/  MGMT_OP_GET_CONN_INFO ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_CONNECTED ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_POWERED ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  conn_info_cmd_complete ; 
 int /*<<< orphan*/  conn_info_refresh_complete ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 struct hci_conn* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_read_tx_power*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_request*,struct hci_dev*) ; 
 int FUNC12 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC14 (struct mgmt_rp_get_conn_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mgmt_rp_get_conn_info*,int) ; 
 struct mgmt_pending_cmd* FUNC16 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (unsigned long) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct hci_dev*,struct hci_conn*) ; 
 unsigned long FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct sock *sk, struct hci_dev *hdev, void *data,
			 u16 len)
{
	struct mgmt_cp_get_conn_info *cp = data;
	struct mgmt_rp_get_conn_info rp;
	struct hci_conn *conn;
	unsigned long conn_info_age;
	int err = 0;

	FUNC0("%s", hdev->name);

	FUNC14(&rp, 0, sizeof(rp));
	FUNC1(&rp.addr.bdaddr, &cp->addr.bdaddr);
	rp.addr.type = cp->addr.type;

	if (!FUNC3(cp->addr.type))
		return FUNC15(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
					 MGMT_STATUS_INVALID_PARAMS,
					 &rp, sizeof(rp));

	FUNC8(hdev);

	if (!FUNC13(hdev)) {
		err = FUNC15(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
					MGMT_STATUS_NOT_POWERED, &rp,
					sizeof(rp));
		goto unlock;
	}

	if (cp->addr.type == BDADDR_BREDR)
		conn = FUNC6(hdev, ACL_LINK,
					       &cp->addr.bdaddr);
	else
		conn = FUNC6(hdev, LE_LINK, &cp->addr.bdaddr);

	if (!conn || conn->state != BT_CONNECTED) {
		err = FUNC15(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
					MGMT_STATUS_NOT_CONNECTED, &rp,
					sizeof(rp));
		goto unlock;
	}

	if (FUNC18(MGMT_OP_GET_CONN_INFO, hdev, conn)) {
		err = FUNC15(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
					MGMT_STATUS_BUSY, &rp, sizeof(rp));
		goto unlock;
	}

	/* To avoid client trying to guess when to poll again for information we
	 * calculate conn info age as random value between min/max set in hdev.
	 */
	conn_info_age = hdev->conn_info_min_age +
			FUNC19(hdev->conn_info_max_age -
					hdev->conn_info_min_age);

	/* Query controller to refresh cached values if they are too old or were
	 * never read.
	 */
	if (FUNC20(jiffies, conn->conn_info_timestamp +
		       FUNC17(conn_info_age)) ||
	    !conn->conn_info_timestamp) {
		struct hci_request req;
		struct hci_cp_read_tx_power req_txp_cp;
		struct hci_cp_read_rssi req_rssi_cp;
		struct mgmt_pending_cmd *cmd;

		FUNC11(&req, hdev);
		req_rssi_cp.handle = FUNC4(conn->handle);
		FUNC10(&req, HCI_OP_READ_RSSI, sizeof(req_rssi_cp),
			    &req_rssi_cp);

		/* For LE links TX power does not change thus we don't need to
		 * query for it once value is known.
		 */
		if (!FUNC2(cp->addr.type) ||
		    conn->tx_power == HCI_TX_POWER_INVALID) {
			req_txp_cp.handle = FUNC4(conn->handle);
			req_txp_cp.type = 0x00;
			FUNC10(&req, HCI_OP_READ_TX_POWER,
				    sizeof(req_txp_cp), &req_txp_cp);
		}

		/* Max TX power needs to be read only once per connection */
		if (conn->max_tx_power == HCI_TX_POWER_INVALID) {
			req_txp_cp.handle = FUNC4(conn->handle);
			req_txp_cp.type = 0x01;
			FUNC10(&req, HCI_OP_READ_TX_POWER,
				    sizeof(req_txp_cp), &req_txp_cp);
		}

		err = FUNC12(&req, conn_info_refresh_complete);
		if (err < 0)
			goto unlock;

		cmd = FUNC16(sk, MGMT_OP_GET_CONN_INFO, hdev,
				       data, len);
		if (!cmd) {
			err = -ENOMEM;
			goto unlock;
		}

		FUNC7(conn);
		cmd->user_data = FUNC5(conn);
		cmd->cmd_complete = conn_info_cmd_complete;

		conn->conn_info_timestamp = jiffies;
	} else {
		/* Cache is valid, just reply with values cached in hci_conn */
		rp.rssi = conn->rssi;
		rp.tx_power = conn->tx_power;
		rp.max_tx_power = conn->max_tx_power;

		err = FUNC15(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
					MGMT_STATUS_SUCCESS, &rp, sizeof(rp));
	}

unlock:
	FUNC9(hdev);
	return err;
}