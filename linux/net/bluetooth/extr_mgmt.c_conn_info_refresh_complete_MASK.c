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
typedef  int /*<<< orphan*/  u16 ;
struct mgmt_pending_cmd {int /*<<< orphan*/  (* cmd_complete ) (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ;} ;
struct hci_dev {int dummy; } ;
struct hci_cp_read_rssi {int /*<<< orphan*/  handle; } ;
struct hci_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_READ_RSSI ; 
 int /*<<< orphan*/  HCI_OP_READ_TX_POWER ; 
 int /*<<< orphan*/  MGMT_OP_GET_CONN_INFO ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,...) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct hci_cp_read_rssi* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC9 (int /*<<< orphan*/ ,struct hci_dev*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC10 (struct mgmt_pending_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev, u8 hci_status,
				       u16 opcode)
{
	struct hci_cp_read_rssi *cp;
	struct mgmt_pending_cmd *cmd;
	struct hci_conn *conn;
	u16 handle;
	u8 status;

	FUNC0("status 0x%02x", hci_status);

	FUNC4(hdev);

	/* Commands sent in request are either Read RSSI or Read Transmit Power
	 * Level so we check which one was last sent to retrieve connection
	 * handle.  Both commands have handle as first parameter so it's safe to
	 * cast data on the same command struct.
	 *
	 * First command sent is always Read RSSI and we fail only if it fails.
	 * In other case we simply override error to indicate success as we
	 * already remembered if TX power value is actually valid.
	 */
	cp = FUNC6(hdev, HCI_OP_READ_RSSI);
	if (!cp) {
		cp = FUNC6(hdev, HCI_OP_READ_TX_POWER);
		status = MGMT_STATUS_SUCCESS;
	} else {
		status = FUNC8(hci_status);
	}

	if (!cp) {
		FUNC2(hdev, "invalid sent_cmd in conn_info response");
		goto unlock;
	}

	handle = FUNC1(cp->handle);
	conn = FUNC3(hdev, handle);
	if (!conn) {
		FUNC2(hdev, "unknown handle (%d) in conn_info response",
			   handle);
		goto unlock;
	}

	cmd = FUNC9(MGMT_OP_GET_CONN_INFO, hdev, conn);
	if (!cmd)
		goto unlock;

	cmd->cmd_complete(cmd, status);
	FUNC7(cmd);

unlock:
	FUNC5(hdev);
}