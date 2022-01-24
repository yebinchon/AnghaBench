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
struct hci_dev {int /*<<< orphan*/ ** features; int /*<<< orphan*/  name; } ;
struct hci_cp_write_ssp_mode {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SSP_MODE ; 
 int /*<<< orphan*/  HCI_SSP_ENABLED ; 
 int /*<<< orphan*/  LMP_HOST_SSP ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct hci_cp_write_ssp_mode* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	struct hci_cp_write_ssp_mode *sent;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	sent = FUNC6(hdev, HCI_OP_WRITE_SSP_MODE);
	if (!sent)
		return;

	FUNC2(hdev);

	if (!status) {
		if (sent->mode)
			hdev->features[1][0] |= LMP_HOST_SSP;
		else
			hdev->features[1][0] &= ~LMP_HOST_SSP;
	}

	if (FUNC4(hdev, HCI_MGMT))
		FUNC7(hdev, sent->mode, status);
	else if (!status) {
		if (sent->mode)
			FUNC3(hdev, HCI_SSP_ENABLED);
		else
			FUNC1(hdev, HCI_SSP_ENABLED);
	}

	FUNC5(hdev);
}