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
struct sk_buff {int len; int* data; } ;
struct nfc_hci_dev {int sw_romlib; int sw_patch; int sw_flashlib_major; int sw_flashlib_minor; int hw_derivative; int hw_version; int hw_mpw; int hw_software; int hw_bsid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NFC_HCI_ID_MGMT_GATE ; 
 int /*<<< orphan*/  NFC_HCI_ID_MGMT_VERSION_HW ; 
 int /*<<< orphan*/  NFC_HCI_ID_MGMT_VERSION_SW ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct nfc_hci_dev *hdev)
{
	int r;
	struct sk_buff *skb;

	r = FUNC1(hdev, NFC_HCI_ID_MGMT_GATE,
			      NFC_HCI_ID_MGMT_VERSION_SW, &skb);
	if (r == -EOPNOTSUPP) {
		FUNC2("Software/Hardware info not available\n");
		return 0;
	}
	if (r < 0)
		return r;

	if (skb->len != 3) {
		FUNC0(skb);
		return -EINVAL;
	}

	hdev->sw_romlib = (skb->data[0] & 0xf0) >> 4;
	hdev->sw_patch = skb->data[0] & 0x0f;
	hdev->sw_flashlib_major = skb->data[1];
	hdev->sw_flashlib_minor = skb->data[2];

	FUNC0(skb);

	r = FUNC1(hdev, NFC_HCI_ID_MGMT_GATE,
			      NFC_HCI_ID_MGMT_VERSION_HW, &skb);
	if (r < 0)
		return r;

	if (skb->len != 3) {
		FUNC0(skb);
		return -EINVAL;
	}

	hdev->hw_derivative = (skb->data[0] & 0xe0) >> 5;
	hdev->hw_version = skb->data[0] & 0x1f;
	hdev->hw_mpw = (skb->data[1] & 0xc0) >> 6;
	hdev->hw_software = skb->data[1] & 0x3f;
	hdev->hw_bsid = skb->data[2];

	FUNC0(skb);

	FUNC2("SOFTWARE INFO:\n");
	FUNC2("RomLib         : %d\n", hdev->sw_romlib);
	FUNC2("Patch          : %d\n", hdev->sw_patch);
	FUNC2("FlashLib Major : %d\n", hdev->sw_flashlib_major);
	FUNC2("FlashLib Minor : %d\n", hdev->sw_flashlib_minor);
	FUNC2("HARDWARE INFO:\n");
	FUNC2("Derivative     : %d\n", hdev->hw_derivative);
	FUNC2("HW Version     : %d\n", hdev->hw_version);
	FUNC2("#MPW           : %d\n", hdev->hw_mpw);
	FUNC2("Software       : %d\n", hdev->hw_software);
	FUNC2("BSID Version   : %d\n", hdev->hw_bsid);

	return 0;
}