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
struct hci_dev {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_INIT_TIMEOUT ; 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_SETUP ; 
 int FUNC0 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hci_init0_req ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_dev *hdev)
{
	int err;

	if (FUNC3(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
		return 0;

	err = FUNC0(hdev, hci_init0_req, 0, HCI_INIT_TIMEOUT, NULL);
	if (err < 0)
		return err;

	if (FUNC2(hdev, HCI_SETUP))
		FUNC1(hdev);

	return 0;
}