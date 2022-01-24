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
typedef  int u8 ;
struct hci_dev {int /*<<< orphan*/  cur_adv_instance; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_CONNECTABLE ; 
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_LIMITED_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int SCAN_INQUIRY ; 
 int SCAN_PAGE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev, u8 scan)
{
	bool conn_changed, discov_changed;

	FUNC0("%s scan 0x%02x", hdev->name, scan);

	if ((scan & SCAN_PAGE))
		conn_changed = !FUNC4(hdev,
							  HCI_CONNECTABLE);
	else
		conn_changed = FUNC3(hdev,
							   HCI_CONNECTABLE);

	if ((scan & SCAN_INQUIRY)) {
		discov_changed = !FUNC4(hdev,
							    HCI_DISCOVERABLE);
	} else {
		FUNC1(hdev, HCI_LIMITED_DISCOVERABLE);
		discov_changed = FUNC3(hdev,
							     HCI_DISCOVERABLE);
	}

	if (!FUNC5(hdev, HCI_MGMT))
		return;

	if (conn_changed || discov_changed) {
		/* In case this was disabled through mgmt */
		FUNC2(hdev, HCI_BREDR_ENABLED);

		if (FUNC5(hdev, HCI_LE_ENABLED))
			FUNC6(hdev, hdev->cur_adv_instance);

		FUNC7(hdev);
	}
}