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
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {scalar_t__ le_scan_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  DISCOVERY_STOPPED ; 
 int /*<<< orphan*/  HCI_INQUIRY ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 scalar_t__ LE_SCAN_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (status)
		return;

	FUNC1(HCI_INQUIRY, &hdev->flags);
	FUNC7(); /* wake_up_bit advises about this barrier */
	FUNC8(&hdev->flags, HCI_INQUIRY);

	FUNC3(hdev);
	/* Set discovery state to stopped if we're not doing LE active
	 * scanning.
	 */
	if (!FUNC4(hdev, HCI_LE_SCAN) ||
	    hdev->le_scan_type != LE_SCAN_ACTIVE)
		FUNC6(hdev, DISCOVERY_STOPPED);
	FUNC5(hdev);

	FUNC2(hdev);
}