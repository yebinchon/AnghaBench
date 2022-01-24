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
struct hci_request {struct hci_dev* hdev; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct hci_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  pend_le_reports; int /*<<< orphan*/  pend_le_conns; TYPE_1__ discovery; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ DISCOVERY_STOPPED ; 
 int /*<<< orphan*/  HCI_AUTO_OFF ; 
 int /*<<< orphan*/  HCI_CONFIG ; 
 int /*<<< orphan*/  HCI_INIT ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int /*<<< orphan*/  HCI_UNREGISTER ; 
 int /*<<< orphan*/  HCI_UP ; 
 scalar_t__ FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;

	if (!FUNC7(HCI_UP, &hdev->flags) ||
	    FUNC7(HCI_INIT, &hdev->flags) ||
	    FUNC1(hdev, HCI_SETUP) ||
	    FUNC1(hdev, HCI_CONFIG) ||
	    FUNC1(hdev, HCI_AUTO_OFF) ||
	    FUNC1(hdev, HCI_UNREGISTER))
		return;

	/* No point in doing scanning if LE support hasn't been enabled */
	if (!FUNC1(hdev, HCI_LE_ENABLED))
		return;

	/* If discovery is active don't interfere with it */
	if (hdev->discovery.state != DISCOVERY_STOPPED)
		return;

	/* Reset RSSI and UUID filters when starting background scanning
	 * since these filters are meant for service discovery only.
	 *
	 * The Start Discovery and Start Service Discovery operations
	 * ensure to set proper values for RSSI threshold and UUID
	 * filter list. So it is safe to just reset them here.
	 */
	FUNC2(hdev);

	if (FUNC6(&hdev->pend_le_conns) &&
	    FUNC6(&hdev->pend_le_reports)) {
		/* If there is no pending LE connections or devices
		 * to be scanned for, we should stop the background
		 * scanning.
		 */

		/* If controller is not scanning we are done. */
		if (!FUNC1(hdev, HCI_LE_SCAN))
			return;

		FUNC5(req);

		FUNC0("%s stopping background scanning", hdev->name);
	} else {
		/* If there is at least one pending LE connection, we should
		 * keep the background scan running.
		 */

		/* If controller is connecting, we should not start scanning
		 * since some controllers are not able to scan and connect at
		 * the same time.
		 */
		if (FUNC3(hdev))
			return;

		/* If controller is currently scanning, we stop it to ensure we
		 * don't miss any advertising (due to duplicates filter).
		 */
		if (FUNC1(hdev, HCI_LE_SCAN))
			FUNC5(req);

		FUNC4(req);

		FUNC0("%s starting background scanning", hdev->name);
	}
}