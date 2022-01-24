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
struct hci_dev {int /*<<< orphan*/  (* notify ) (struct hci_dev*,int /*<<< orphan*/ ) ;} ;
struct hci_conn {int /*<<< orphan*/  debugfs; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; struct hci_dev* hdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_CONN_PARAM_REMOVAL_PEND ; 
 int /*<<< orphan*/  HCI_NOTIFY_CONN_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;

	if (FUNC8(HCI_CONN_PARAM_REMOVAL_PEND, &conn->flags))
		FUNC4(conn->hdev, &conn->dst, conn->dst_type);

	FUNC1(conn);

	FUNC3(hdev, conn);

	if (hdev->notify)
		hdev->notify(hdev, HCI_NOTIFY_CONN_DEL);

	FUNC2(conn);

	FUNC0(conn->debugfs);

	FUNC6(hdev);

	FUNC5(conn);
}