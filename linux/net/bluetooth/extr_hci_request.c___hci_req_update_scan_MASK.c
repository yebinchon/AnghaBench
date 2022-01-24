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
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_CONNECTABLE ; 
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_ISCAN ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SCAN_ENABLE ; 
 int /*<<< orphan*/  HCI_PSCAN ; 
 int SCAN_DISABLED ; 
 int SCAN_INQUIRY ; 
 int SCAN_PAGE ; 
 scalar_t__ FUNC0 (struct hci_dev*) ; 
 scalar_t__ FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	u8 scan;

	if (!FUNC1(hdev, HCI_BREDR_ENABLED))
		return;

	if (!FUNC3(hdev))
		return;

	if (FUNC4(hdev))
		return;

	if (FUNC1(hdev, HCI_CONNECTABLE) ||
	    FUNC0(hdev))
		scan = SCAN_PAGE;
	else
		scan = SCAN_DISABLED;

	if (FUNC1(hdev, HCI_DISCOVERABLE))
		scan |= SCAN_INQUIRY;

	if (FUNC5(HCI_PSCAN, &hdev->flags) == !!(scan & SCAN_PAGE) &&
	    FUNC5(HCI_ISCAN, &hdev->flags) == !!(scan & SCAN_INQUIRY))
		return;

	FUNC2(req, HCI_OP_WRITE_SCAN_ENABLE, 1, &scan);
}