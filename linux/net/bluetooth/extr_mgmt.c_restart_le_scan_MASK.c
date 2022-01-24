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
struct TYPE_2__ {scalar_t__ scan_duration; scalar_t__ scan_start; } ;
struct hci_dev {int /*<<< orphan*/  le_scan_restart; int /*<<< orphan*/  req_workqueue; TYPE_1__ discovery; } ;

/* Variables and functions */
 scalar_t__ DISCOV_LE_RESTART_DELAY ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hci_dev *hdev)
{
	/* If controller is not scanning we are done. */
	if (!FUNC0(hdev, HCI_LE_SCAN))
		return;

	if (FUNC2(jiffies + DISCOV_LE_RESTART_DELAY,
		       hdev->discovery.scan_start +
		       hdev->discovery.scan_duration))
		return;

	FUNC1(hdev->req_workqueue, &hdev->le_scan_restart,
			   DISCOV_LE_RESTART_DELAY);
}