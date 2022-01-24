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
struct hci_dev {scalar_t__ dev_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_CONFIG ; 
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 scalar_t__ HCI_PRIMARY ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int FUNC0 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hci_init1_req ; 
 int /*<<< orphan*/  hci_init2_req ; 
 int /*<<< orphan*/  hci_init3_req ; 
 int /*<<< orphan*/  hci_init4_req ; 
 scalar_t__ FUNC6 (struct hci_dev*) ; 
 scalar_t__ FUNC7 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC8(struct hci_dev *hdev)
{
	int err;

	err = FUNC0(hdev, hci_init1_req, 0, HCI_INIT_TIMEOUT, NULL);
	if (err < 0)
		return err;

	if (FUNC5(hdev, HCI_SETUP))
		FUNC1(hdev);

	err = FUNC0(hdev, hci_init2_req, 0, HCI_INIT_TIMEOUT, NULL);
	if (err < 0)
		return err;

	/* HCI_PRIMARY covers both single-mode LE, BR/EDR and dual-mode
	 * BR/EDR/LE type controllers. AMP controllers only need the
	 * first two stages of init.
	 */
	if (hdev->dev_type != HCI_PRIMARY)
		return 0;

	err = FUNC0(hdev, hci_init3_req, 0, HCI_INIT_TIMEOUT, NULL);
	if (err < 0)
		return err;

	err = FUNC0(hdev, hci_init4_req, 0, HCI_INIT_TIMEOUT, NULL);
	if (err < 0)
		return err;

	/* This function is only called when the controller is actually in
	 * configured state. When the controller is marked as unconfigured,
	 * this initialization procedure is not run.
	 *
	 * It means that it is possible that a controller runs through its
	 * setup phase and then discovers missing settings. If that is the
	 * case, then this function will not be called. It then will only
	 * be called during the config phase.
	 *
	 * So only when in setup phase or config phase, create the debugfs
	 * entries and register the SMP channels.
	 */
	if (!FUNC5(hdev, HCI_SETUP) &&
	    !FUNC5(hdev, HCI_CONFIG))
		return 0;

	FUNC3(hdev);

	if (FUNC6(hdev))
		FUNC2(hdev);

	if (FUNC7(hdev))
		FUNC4(hdev);

	return 0;
}