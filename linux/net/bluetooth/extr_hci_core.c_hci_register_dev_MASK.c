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
struct hci_dev {int dev_type; int id; void* req_workqueue; void* workqueue; int /*<<< orphan*/  power_on; int /*<<< orphan*/  quirks; int /*<<< orphan*/  list; int /*<<< orphan*/ * rfkill; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  bus; int /*<<< orphan*/  send; int /*<<< orphan*/  close; int /*<<< orphan*/  open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HCI_AMP 129 
 int /*<<< orphan*/  HCI_AUTO_OFF ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_DEV_REG ; 
#define  HCI_PRIMARY 128 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_RFKILLED ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  WQ_HIGHPRI ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_debugfs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_dev_list ; 
 int /*<<< orphan*/  hci_dev_list_lock ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hci_index_ida ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  hci_rfkill_ops ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct hci_dev*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(struct hci_dev *hdev)
{
	int id, error;

	if (!hdev->open || !hdev->close || !hdev->send)
		return -EINVAL;

	/* Do not allow HCI_AMP devices to register at index 0,
	 * so the index can be used as the AMP controller ID.
	 */
	switch (hdev->dev_type) {
	case HCI_PRIMARY:
		id = FUNC11(&hci_index_ida, 0, 0, GFP_KERNEL);
		break;
	case HCI_AMP:
		id = FUNC11(&hci_index_ida, 1, 0, GFP_KERNEL);
		break;
	default:
		return -EINVAL;
	}

	if (id < 0)
		return id;

	FUNC19(hdev->name, "hci%d", id);
	hdev->id = id;

	FUNC0("%p name %s bus %d", hdev, hdev->name, hdev->bus);

	hdev->workqueue = FUNC2("%s", WQ_HIGHPRI, hdev->name);
	if (!hdev->workqueue) {
		error = -ENOMEM;
		goto err;
	}

	hdev->req_workqueue = FUNC2("%s", WQ_HIGHPRI,
						      hdev->name);
	if (!hdev->req_workqueue) {
		FUNC4(hdev->workqueue);
		error = -ENOMEM;
		goto err;
	}

	if (!FUNC1(bt_debugfs))
		hdev->debugfs = FUNC3(hdev->name, bt_debugfs);

	FUNC5(&hdev->dev, "%s", hdev->name);

	error = FUNC6(&hdev->dev);
	if (error < 0)
		goto err_wqueue;

	FUNC9(hdev);

	hdev->rfkill = FUNC15(hdev->name, &hdev->dev,
				    RFKILL_TYPE_BLUETOOTH, &hci_rfkill_ops,
				    hdev);
	if (hdev->rfkill) {
		if (FUNC18(hdev->rfkill) < 0) {
			FUNC17(hdev->rfkill);
			hdev->rfkill = NULL;
		}
	}

	if (hdev->rfkill && FUNC16(hdev->rfkill))
		FUNC8(hdev, HCI_RFKILLED);

	FUNC8(hdev, HCI_SETUP);
	FUNC8(hdev, HCI_AUTO_OFF);

	if (hdev->dev_type == HCI_PRIMARY) {
		/* Assume BR/EDR support until proven otherwise (such as
		 * through reading supported features during init.
		 */
		FUNC8(hdev, HCI_BREDR_ENABLED);
	}

	FUNC21(&hci_dev_list_lock);
	FUNC13(&hdev->list, &hci_dev_list);
	FUNC22(&hci_dev_list_lock);

	/* Devices that are marked for raw-only usage are unconfigured
	 * and should not be included in normal operation.
	 */
	if (FUNC20(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
		FUNC8(hdev, HCI_UNCONFIGURED);

	FUNC10(hdev, HCI_DEV_REG);
	FUNC7(hdev);

	FUNC14(hdev->req_workqueue, &hdev->power_on);

	return id;

err_wqueue:
	FUNC4(hdev->workqueue);
	FUNC4(hdev->req_workqueue);
err:
	FUNC12(&hci_index_ida, hdev->id);

	return error;
}