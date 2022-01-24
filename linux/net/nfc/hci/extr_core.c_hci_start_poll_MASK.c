#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* start_poll ) (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_HCI_EVT_READER_REQUESTED ; 
 int /*<<< orphan*/  NFC_HCI_RF_READER_A_GATE ; 
 struct nfc_hci_dev* FUNC0 (struct nfc_dev*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nfc_dev *nfc_dev,
			  u32 im_protocols, u32 tm_protocols)
{
	struct nfc_hci_dev *hdev = FUNC0(nfc_dev);

	if (hdev->ops->start_poll)
		return hdev->ops->start_poll(hdev, im_protocols, tm_protocols);
	else
		return FUNC1(hdev, NFC_HCI_RF_READER_A_GATE,
					  NFC_HCI_EVT_READER_REQUESTED,
					  NULL, 0);
}