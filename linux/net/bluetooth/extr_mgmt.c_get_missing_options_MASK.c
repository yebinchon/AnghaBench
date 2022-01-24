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
typedef  int /*<<< orphan*/  u32 ;
struct hci_dev {int /*<<< orphan*/  public_addr; int /*<<< orphan*/  quirks; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  HCI_EXT_CONFIGURED ; 
 int /*<<< orphan*/  HCI_QUIRK_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  HCI_QUIRK_INVALID_BDADDR ; 
 int /*<<< orphan*/  HCI_QUIRK_USE_BDADDR_PROPERTY ; 
 int /*<<< orphan*/  MGMT_OPTION_EXTERNAL_CONFIG ; 
 int /*<<< orphan*/  MGMT_OPTION_PUBLIC_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __le32 FUNC4(struct hci_dev *hdev)
{
	u32 options = 0;

	if (FUNC3(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks) &&
	    !FUNC2(hdev, HCI_EXT_CONFIGURED))
		options |= MGMT_OPTION_EXTERNAL_CONFIG;

	if ((FUNC3(HCI_QUIRK_INVALID_BDADDR, &hdev->quirks) ||
	     FUNC3(HCI_QUIRK_USE_BDADDR_PROPERTY, &hdev->quirks)) &&
	    !FUNC0(&hdev->public_addr, BDADDR_ANY))
		options |= MGMT_OPTION_PUBLIC_ADDRESS;

	return FUNC1(options);
}