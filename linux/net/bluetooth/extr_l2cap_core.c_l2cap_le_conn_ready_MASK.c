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
struct l2cap_conn_param_update_req {void* to_multiplier; void* latency; void* max; void* min; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ role; scalar_t__ le_conn_interval; scalar_t__ le_conn_min_interval; scalar_t__ le_conn_max_interval; scalar_t__ le_conn_latency; scalar_t__ le_supv_timeout; int /*<<< orphan*/  pending_sec_level; scalar_t__ out; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct l2cap_conn*) ; 
 scalar_t__ HCI_ROLE_SLAVE ; 
 int /*<<< orphan*/  L2CAP_CONN_PARAM_UPDATE_REQ ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_conn_param_update_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct l2cap_conn *conn)
{
	struct hci_conn *hcon = conn->hcon;
	struct hci_dev *hdev = hcon->hdev;

	FUNC0("%s conn %p", hdev->name, conn);

	/* For outgoing pairing which doesn't necessarily have an
	 * associated socket (e.g. mgmt_pair_device).
	 */
	if (hcon->out)
		FUNC4(hcon, hcon->pending_sec_level);

	/* For LE slave connections, make sure the connection interval
	 * is in the range of the minium and maximum interval that has
	 * been configured for this connection. If not, then trigger
	 * the connection update procedure.
	 */
	if (hcon->role == HCI_ROLE_SLAVE &&
	    (hcon->le_conn_interval < hcon->le_conn_min_interval ||
	     hcon->le_conn_interval > hcon->le_conn_max_interval)) {
		struct l2cap_conn_param_update_req req;

		req.min = FUNC1(hcon->le_conn_min_interval);
		req.max = FUNC1(hcon->le_conn_max_interval);
		req.latency = FUNC1(hcon->le_conn_latency);
		req.to_multiplier = FUNC1(hcon->le_supv_timeout);

		FUNC3(conn, FUNC2(conn),
			       L2CAP_CONN_PARAM_UPDATE_REQ, sizeof(req), &req);
	}
}