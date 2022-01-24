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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct smp_irk {int /*<<< orphan*/  rpa; } ;
struct hci_request {int dummy; } ;
struct hci_dev {scalar_t__ le_scan_type; int /*<<< orphan*/  le_supv_timeout; int /*<<< orphan*/  le_conn_latency; int /*<<< orphan*/  le_conn_max_interval; int /*<<< orphan*/  le_conn_min_interval; } ;
struct hci_conn_params {int /*<<< orphan*/  supervision_timeout; int /*<<< orphan*/  conn_latency; int /*<<< orphan*/  conn_max_interval; int /*<<< orphan*/  conn_min_interval; } ;
struct hci_conn {scalar_t__ role; int /*<<< orphan*/  le_supv_timeout; int /*<<< orphan*/  le_conn_latency; int /*<<< orphan*/  le_conn_max_interval; int /*<<< orphan*/  le_conn_min_interval; void* dst_type; int /*<<< orphan*/  dst; int /*<<< orphan*/  conn_timeout; int /*<<< orphan*/  sec_level; void* pending_sec_level; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  enable ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 void* ADDR_LE_DEV_RANDOM ; 
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  BT_SECURITY_LOW ; 
 int EBUSY ; 
 int ECONNREFUSED ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct hci_conn* FUNC0 (int) ; 
 int /*<<< orphan*/  HCI_CONN_SCANNING ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  HCI_LE_SCAN_INTERRUPTED ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_ADV_ENABLE ; 
 scalar_t__ HCI_ROLE_SLAVE ; 
 int /*<<< orphan*/  LE_LINK ; 
 scalar_t__ LE_SCAN_ACTIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  create_le_conn_complete ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 struct hci_conn_params* FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct smp_irk* FUNC10 (struct hci_dev*,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_request*,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_request*,struct hci_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_request*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC16 (struct hci_request*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct hci_request*) ; 
 int FUNC18 (struct hci_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct hci_conn *FUNC21(struct hci_dev *hdev, bdaddr_t *dst,
				u8 dst_type, u8 sec_level, u16 conn_timeout,
				u8 role, bdaddr_t *direct_rpa)
{
	struct hci_conn_params *params;
	struct hci_conn *conn;
	struct smp_irk *irk;
	struct hci_request req;
	int err;

	/* Let's make sure that le is enabled.*/
	if (!FUNC9(hdev, HCI_LE_ENABLED)) {
		if (FUNC19(hdev))
			return FUNC0(-ECONNREFUSED);

		return FUNC0(-EOPNOTSUPP);
	}

	/* Since the controller supports only one LE connection attempt at a
	 * time, we return -EBUSY if there is any connection attempt running.
	 */
	if (FUNC11(hdev))
		return FUNC0(-EBUSY);

	/* If there's already a connection object but it's not in
	 * scanning state it means it must already be established, in
	 * which case we can't do anything else except report a failure
	 * to connect.
	 */
	conn = FUNC5(hdev, dst, dst_type);
	if (conn && !FUNC20(HCI_CONN_SCANNING, &conn->flags)) {
		return FUNC0(-EBUSY);
	}

	/* When given an identity address with existing identity
	 * resolving key, the connection needs to be established
	 * to a resolvable random address.
	 *
	 * Storing the resolvable random address is required here
	 * to handle connection failures. The address will later
	 * be resolved back into the original identity address
	 * from the connect request.
	 */
	irk = FUNC10(hdev, dst, dst_type);
	if (irk && FUNC1(&irk->rpa, BDADDR_ANY)) {
		dst = &irk->rpa;
		dst_type = ADDR_LE_DEV_RANDOM;
	}

	if (conn) {
		FUNC2(&conn->dst, dst);
	} else {
		conn = FUNC3(hdev, LE_LINK, dst, role);
		if (!conn)
			return FUNC0(-ENOMEM);
		FUNC6(conn);
		conn->pending_sec_level = sec_level;
	}

	conn->dst_type = dst_type;
	conn->sec_level = BT_SECURITY_LOW;
	conn->conn_timeout = conn_timeout;

	FUNC16(&req, hdev);

	/* Disable advertising if we're active. For master role
	 * connections most controllers will refuse to connect if
	 * advertising is enabled, and for slave role connections we
	 * anyway have to disable it in order to start directed
	 * advertising.
	 */
	if (FUNC9(hdev, HCI_LE_ADV)) {
		u8 enable = 0x00;
		FUNC12(&req, HCI_OP_LE_SET_ADV_ENABLE, sizeof(enable),
			    &enable);
	}

	/* If requested to connect as slave use directed advertising */
	if (conn->role == HCI_ROLE_SLAVE) {
		/* If we're active scanning most controllers are unable
		 * to initiate advertising. Simply reject the attempt.
		 */
		if (FUNC9(hdev, HCI_LE_SCAN) &&
		    hdev->le_scan_type == LE_SCAN_ACTIVE) {
			FUNC17(&req);
			FUNC4(conn);
			return FUNC0(-EBUSY);
		}

		FUNC15(&req, conn);
		goto create_conn;
	}

	params = FUNC7(hdev, &conn->dst, conn->dst_type);
	if (params) {
		conn->le_conn_min_interval = params->conn_min_interval;
		conn->le_conn_max_interval = params->conn_max_interval;
		conn->le_conn_latency = params->conn_latency;
		conn->le_supv_timeout = params->supervision_timeout;
	} else {
		conn->le_conn_min_interval = hdev->le_conn_min_interval;
		conn->le_conn_max_interval = hdev->le_conn_max_interval;
		conn->le_conn_latency = hdev->le_conn_latency;
		conn->le_supv_timeout = hdev->le_supv_timeout;
	}

	/* If controller is scanning, we stop it since some controllers are
	 * not able to scan and connect at the same time. Also set the
	 * HCI_LE_SCAN_INTERRUPTED flag so that the command complete
	 * handler for scan disabling knows to set the correct discovery
	 * state.
	 */
	if (FUNC9(hdev, HCI_LE_SCAN)) {
		FUNC14(&req);
		FUNC8(hdev, HCI_LE_SCAN_INTERRUPTED);
	}

	FUNC13(&req, conn, direct_rpa);

create_conn:
	err = FUNC18(&req, create_le_conn_complete);
	if (err) {
		FUNC4(conn);
		return FUNC0(err);
	}

	return conn;
}