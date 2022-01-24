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
struct hci_dev {int /*<<< orphan*/  adv_instance_expire; int /*<<< orphan*/  le_scan_restart; int /*<<< orphan*/  le_scan_disable; int /*<<< orphan*/  discov_off; int /*<<< orphan*/  discoverable_update; int /*<<< orphan*/  connectable_update; int /*<<< orphan*/  scan_update; int /*<<< orphan*/  bg_scan_update; int /*<<< orphan*/  discov_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adv_timeout_expire ; 
 int /*<<< orphan*/  bg_scan_update ; 
 int /*<<< orphan*/  connectable_update_work ; 
 int /*<<< orphan*/  discov_off ; 
 int /*<<< orphan*/  discov_update ; 
 int /*<<< orphan*/  discoverable_update_work ; 
 int /*<<< orphan*/  le_scan_disable_work ; 
 int /*<<< orphan*/  le_scan_restart_work ; 
 int /*<<< orphan*/  scan_update_work ; 

void FUNC2(struct hci_dev *hdev)
{
	FUNC1(&hdev->discov_update, discov_update);
	FUNC1(&hdev->bg_scan_update, bg_scan_update);
	FUNC1(&hdev->scan_update, scan_update_work);
	FUNC1(&hdev->connectable_update, connectable_update_work);
	FUNC1(&hdev->discoverable_update, discoverable_update_work);
	FUNC0(&hdev->discov_off, discov_off);
	FUNC0(&hdev->le_scan_disable, le_scan_disable_work);
	FUNC0(&hdev->le_scan_restart, le_scan_restart_work);
	FUNC0(&hdev->adv_instance_expire, adv_timeout_expire);
}