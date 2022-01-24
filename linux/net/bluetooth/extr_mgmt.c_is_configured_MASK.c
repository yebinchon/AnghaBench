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
struct hci_dev {int /*<<< orphan*/  public_addr; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  HCI_EXT_CONFIGURED ; 
 int /*<<< orphan*/  HCI_QUIRK_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  HCI_QUIRK_INVALID_BDADDR ; 
 int /*<<< orphan*/  HCI_QUIRK_USE_BDADDR_PROPERTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct hci_dev *hdev)
{
	if (FUNC2(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks) &&
	    !FUNC1(hdev, HCI_EXT_CONFIGURED))
		return false;

	if ((FUNC2(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks) ||
	     FUNC2(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks)) &&
	    !FUNC0(&hdev->public_addr, BDADDR_ANY))
		return false;

	return true;
}