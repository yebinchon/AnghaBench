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
struct hci_dev {int /*<<< orphan*/  pend_le_conns; } ;
struct hci_conn_params {scalar_t__ explicit_connect; int /*<<< orphan*/ * conn; } ;
struct hci_conn {int /*<<< orphan*/  dst_type; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; int /*<<< orphan*/  state; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  HCI_ERROR_UNKNOWN_CONN_ID ; 
 int /*<<< orphan*/  FUNC0 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_conn_params* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct hci_conn *conn, u8 status)
{
	struct hci_dev *hdev = conn->hdev;
	struct hci_conn_params *params;

	params = FUNC4(&hdev->pend_le_conns, &conn->dst,
					   conn->dst_type);
	if (params && params->conn) {
		FUNC1(params->conn);
		FUNC2(params->conn);
		params->conn = NULL;
	}

	conn->state = BT_CLOSED;

	/* If the status indicates successful cancellation of
	 * the attempt (i.e. Unkown Connection Id) there's no point of
	 * notifying failure since we'll go back to keep trying to
	 * connect. The only exception is explicit connect requests
	 * where a timeout + cancel does indicate an actual failure.
	 */
	if (status != HCI_ERROR_UNKNOWN_CONN_ID ||
	    (params && params->explicit_connect))
		FUNC7(hdev, &conn->dst, conn->type,
				    conn->dst_type, status);

	FUNC3(conn, status);

	FUNC0(conn);

	/* Since we may have temporarily stopped the background scanning in
	 * favor of connection establishment, we should restart it.
	 */
	FUNC6(hdev);

	/* Re-enable advertising in case this was a failed connection
	 * attempt as a peripheral.
	 */
	FUNC5(hdev);
}