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
struct hci_dev {int id; int /*<<< orphan*/  le_resolv_list; int /*<<< orphan*/  le_white_list; int /*<<< orphan*/  whitelist; int /*<<< orphan*/  blacklist; int /*<<< orphan*/  req_workqueue; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  fw_info; int /*<<< orphan*/  hw_info; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  dev; scalar_t__ rfkill; int /*<<< orphan*/  mgmt_pending; int /*<<< orphan*/  flags; int /*<<< orphan*/  power_on; int /*<<< orphan*/  list; int /*<<< orphan*/  bus; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  HCI_CONFIG ; 
 int /*<<< orphan*/  HCI_DEV_UNREG ; 
 int /*<<< orphan*/  HCI_INIT ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int /*<<< orphan*/  HCI_UNREGISTER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_dev_list_lock ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_index_ida ; 
 int /*<<< orphan*/  FUNC16 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 

void FUNC32(struct hci_dev *hdev)
{
	int id;

	FUNC0("%p name %s bus %d", hdev, hdev->name, hdev->bus);

	FUNC12(hdev, HCI_UNREGISTER);

	id = hdev->id;

	FUNC30(&hci_dev_list_lock);
	FUNC24(&hdev->list);
	FUNC31(&hci_dev_list_lock);

	FUNC2(&hdev->power_on);

	FUNC9(hdev);

	if (!FUNC29(HCI_INIT, &hdev->flags) &&
	    !FUNC13(hdev, HCI_SETUP) &&
	    !FUNC13(hdev, HCI_CONFIG)) {
		FUNC10(hdev);
		FUNC26(hdev);
		FUNC14(hdev);
	}

	/* mgmt_index_removed should take care of emptying the
	 * pending list */
	FUNC1(!FUNC25(&hdev->mgmt_pending));

	FUNC20(hdev, HCI_DEV_UNREG);

	if (hdev->rfkill) {
		FUNC28(hdev->rfkill);
		FUNC27(hdev->rfkill);
	}

	FUNC5(&hdev->dev);

	FUNC3(hdev->debugfs);
	FUNC23(hdev->hw_info);
	FUNC23(hdev->fw_info);

	FUNC4(hdev->workqueue);
	FUNC4(hdev->req_workqueue);

	FUNC10(hdev);
	FUNC7(&hdev->blacklist);
	FUNC7(&hdev->whitelist);
	FUNC21(hdev);
	FUNC16(hdev);
	FUNC19(hdev);
	FUNC18(hdev);
	FUNC17(hdev);
	FUNC6(hdev);
	FUNC7(&hdev->le_white_list);
	FUNC7(&hdev->le_resolv_list);
	FUNC8(hdev);
	FUNC15(hdev);
	FUNC14(hdev);

	FUNC11(hdev);

	FUNC22(&hci_index_ida, id);
}