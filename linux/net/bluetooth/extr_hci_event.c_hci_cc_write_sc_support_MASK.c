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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int /*<<< orphan*/ ** features; int /*<<< orphan*/  name; } ;
struct hci_cp_write_sc_support {scalar_t__ support; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SC_SUPPORT ; 
 int /*<<< orphan*/  HCI_SC_ENABLED ; 
 int /*<<< orphan*/  LMP_HOST_SC ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct hci_cp_write_sc_support* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hci_dev *hdev, struct sk_buff *skb)
{
	u8 status = *((u8 *) skb->data);
	struct hci_cp_write_sc_support *sent;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	sent = FUNC6(hdev, HCI_OP_WRITE_SC_SUPPORT);
	if (!sent)
		return;

	FUNC2(hdev);

	if (!status) {
		if (sent->support)
			hdev->features[1][0] |= LMP_HOST_SC;
		else
			hdev->features[1][0] &= ~LMP_HOST_SC;
	}

	if (!FUNC4(hdev, HCI_MGMT) && !status) {
		if (sent->support)
			FUNC3(hdev, HCI_SC_ENABLED);
		else
			FUNC1(hdev, HCI_SC_ENABLED);
	}

	FUNC5(hdev);
}