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
struct hci_conn {int /*<<< orphan*/  le_scan_cleanup; TYPE_1__* hdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hci_conn *conn)
{
	FUNC0("%s hcon %p", conn->hdev->name, conn);

	/* We can't call hci_conn_del/hci_conn_cleanup here since that
	 * could deadlock with another hci_conn_del() call that's holding
	 * hci_dev_lock and doing cancel_delayed_work_sync(&conn->disc_work).
	 * Instead, grab temporary extra references to the hci_dev and
	 * hci_conn and perform the necessary cleanup in a separate work
	 * callback.
	 */

	FUNC2(conn->hdev);
	FUNC1(conn);

	/* Even though we hold a reference to the hdev, many other
	 * things might get cleaned up meanwhile, including the hdev's
	 * own workqueue, so we can't use that for scheduling.
	 */
	FUNC3(&conn->le_scan_cleanup);
}