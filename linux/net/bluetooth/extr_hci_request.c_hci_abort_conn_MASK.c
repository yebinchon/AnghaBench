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
struct hci_request {int dummy; } ;
struct hci_conn {int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*,struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  abort_conn_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hci_request*,int /*<<< orphan*/ ) ; 

int FUNC4(struct hci_conn *conn, u8 reason)
{
	struct hci_request req;
	int err;

	FUNC2(&req, conn->hdev);

	FUNC0(&req, conn, reason);

	err = FUNC3(&req, abort_conn_complete);
	if (err && err != -ENODATA) {
		FUNC1(conn->hdev, "failed to run HCI request: err %d", err);
		return err;
	}

	return 0;
}