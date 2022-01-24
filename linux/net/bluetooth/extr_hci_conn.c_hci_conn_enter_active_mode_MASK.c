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
struct hci_dev {scalar_t__ idle_timeout; int /*<<< orphan*/  workqueue; } ;
struct hci_cp_exit_sniff_mode {int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ mode; int /*<<< orphan*/  idle_work; int /*<<< orphan*/  handle; int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,scalar_t__) ; 
 scalar_t__ HCI_CM_SNIFF ; 
 int /*<<< orphan*/  HCI_CONN_MODE_CHANGE_PEND ; 
 int /*<<< orphan*/  HCI_CONN_POWER_SAVE ; 
 int /*<<< orphan*/  HCI_OP_EXIT_SNIFF_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_exit_sniff_mode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct hci_conn *conn, __u8 force_active)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC0("hcon %p mode %d", conn, conn->mode);

	if (conn->mode != HCI_CM_SNIFF)
		goto timer;

	if (!FUNC6(HCI_CONN_POWER_SAVE, &conn->flags) && !force_active)
		goto timer;

	if (!FUNC5(HCI_CONN_MODE_CHANGE_PEND, &conn->flags)) {
		struct hci_cp_exit_sniff_mode cp;
		cp.handle = FUNC1(conn->handle);
		FUNC2(hdev, HCI_OP_EXIT_SNIFF_MODE, sizeof(cp), &cp);
	}

timer:
	if (hdev->idle_timeout > 0)
		FUNC4(hdev->workqueue, &conn->idle_work,
				   FUNC3(hdev->idle_timeout));
}