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
struct discovery_state {int /*<<< orphan*/  state; int /*<<< orphan*/  last_adv_data_len; int /*<<< orphan*/  last_adv_data; int /*<<< orphan*/  last_adv_flags; int /*<<< orphan*/  last_adv_rssi; int /*<<< orphan*/  last_adv_addr_type; int /*<<< orphan*/  last_adv_addr; } ;
struct hci_dev {struct discovery_state discovery; int /*<<< orphan*/  le_scan_disable; int /*<<< orphan*/  le_scan_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVERY_FINDING ; 
 int /*<<< orphan*/  DISCOVERY_STOPPED ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  HCI_LE_SCAN_INTERRUPTED ; 
 int /*<<< orphan*/  LE_LINK ; 
 int /*<<< orphan*/  LE_SCAN_ACTIVE ; 
#define  LE_SCAN_DISABLE 129 
#define  LE_SCAN_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct hci_dev *hdev, u8 enable)
{
	FUNC5(hdev);

	switch (enable) {
	case LE_SCAN_ENABLE:
		FUNC6(hdev, HCI_LE_SCAN);
		if (hdev->le_scan_type == LE_SCAN_ACTIVE)
			FUNC2(hdev);
		break;

	case LE_SCAN_DISABLE:
		/* We do this here instead of when setting DISCOVERY_STOPPED
		 * since the latter would potentially require waiting for
		 * inquiry to stop too.
		 */
		if (FUNC3(hdev)) {
			struct discovery_state *d = &hdev->discovery;

			FUNC12(hdev, &d->last_adv_addr, LE_LINK,
					  d->last_adv_addr_type, NULL,
					  d->last_adv_rssi, d->last_adv_flags,
					  d->last_adv_data,
					  d->last_adv_data_len, NULL, 0);
		}

		/* Cancel this timer so that we don't try to disable scanning
		 * when it's already disabled.
		 */
		FUNC1(&hdev->le_scan_disable);

		FUNC4(hdev, HCI_LE_SCAN);

		/* The HCI_LE_SCAN_INTERRUPTED flag indicates that we
		 * interrupted scanning due to a connect request. Mark
		 * therefore discovery as stopped. If this was not
		 * because of a connect request advertising might have
		 * been disabled because of active scanning, so
		 * re-enable it again if necessary.
		 */
		if (FUNC7(hdev, HCI_LE_SCAN_INTERRUPTED))
			FUNC10(hdev, DISCOVERY_STOPPED);
		else if (!FUNC8(hdev, HCI_LE_ADV) &&
			 hdev->discovery.state == DISCOVERY_FINDING)
			FUNC11(hdev);

		break;

	default:
		FUNC0(hdev, "use of reserved LE_Scan_Enable param %d",
			   enable);
		break;
	}

	FUNC9(hdev);
}