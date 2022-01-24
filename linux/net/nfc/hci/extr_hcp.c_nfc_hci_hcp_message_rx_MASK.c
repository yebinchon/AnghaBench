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
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
#define  NFC_HCI_HCP_COMMAND 130 
#define  NFC_HCI_HCP_EVENT 129 
#define  NFC_HCI_HCP_RESPONSE 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_hci_dev*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_hci_dev*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_hci_dev*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

void FUNC5(struct nfc_hci_dev *hdev, u8 pipe, u8 type,
			    u8 instruction, struct sk_buff *skb)
{
	switch (type) {
	case NFC_HCI_HCP_RESPONSE:
		FUNC3(hdev, instruction, skb);
		break;
	case NFC_HCI_HCP_COMMAND:
		FUNC1(hdev, pipe, instruction, skb);
		break;
	case NFC_HCI_HCP_EVENT:
		FUNC2(hdev, pipe, instruction, skb);
		break;
	default:
		FUNC4("UNKNOWN MSG Type %d, instruction=%d\n",
		       type, instruction);
		FUNC0(skb);
		break;
	}
}