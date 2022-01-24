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
struct hci_dev {int /*<<< orphan*/  acl_cnt; int /*<<< orphan*/  le_cnt; scalar_t__ le_pkts; int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  data_q; scalar_t__ amp_mgr; struct hci_conn* link; scalar_t__ sent; int /*<<< orphan*/  le_conn_timeout; int /*<<< orphan*/  idle_work; int /*<<< orphan*/  auto_accept_work; int /*<<< orphan*/  disc_work; int /*<<< orphan*/  handle; struct hci_dev* hdev; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct hci_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC0("%s hcon %p handle %d", hdev->name, conn, conn->handle);

	FUNC3(&conn->disc_work);
	FUNC3(&conn->auto_accept_work);
	FUNC3(&conn->idle_work);

	if (conn->type == ACL_LINK) {
		struct hci_conn *sco = conn->link;
		if (sco)
			sco->link = NULL;

		/* Unacked frames */
		hdev->acl_cnt += conn->sent;
	} else if (conn->type == LE_LINK) {
		FUNC2(&conn->le_conn_timeout);

		if (hdev->le_pkts)
			hdev->le_cnt += conn->sent;
		else
			hdev->acl_cnt += conn->sent;
	} else {
		struct hci_conn *acl = conn->link;
		if (acl) {
			acl->link = NULL;
			FUNC5(acl);
		}
	}

	if (conn->amp_mgr)
		FUNC1(conn->amp_mgr);

	FUNC6(&conn->data_q);

	/* Remove the connection from the list and cleanup its remaining
	 * state. This is a separate function since for some cases like
	 * BT_CONNECT_SCAN we *only* want the cleanup part without the
	 * rest of hci_conn_del.
	 */
	FUNC4(conn);

	return 0;
}