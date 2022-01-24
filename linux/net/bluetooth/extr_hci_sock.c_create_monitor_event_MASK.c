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
struct sk_buff {int len; } ;
struct hci_mon_new_index {int /*<<< orphan*/  name; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  bus; int /*<<< orphan*/  type; } ;
struct hci_mon_index_info {void* manufacturer; int /*<<< orphan*/  bdaddr; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct hci_dev {int manufacturer; int id; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  name; int /*<<< orphan*/  bus; int /*<<< orphan*/  dev_type; } ;
typedef  void* __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_DEV_CLOSE 133 
#define  HCI_DEV_OPEN 132 
#define  HCI_DEV_REG 131 
#define  HCI_DEV_SETUP 130 
#define  HCI_DEV_UNREG 129 
#define  HCI_DEV_UP 128 
 int HCI_MON_CLOSE_INDEX ; 
 int HCI_MON_DEL_INDEX ; 
 int HCI_MON_HDR_SIZE ; 
 int HCI_MON_INDEX_INFO ; 
 int /*<<< orphan*/  HCI_MON_INDEX_INFO_SIZE ; 
 int HCI_MON_NEW_INDEX ; 
 int /*<<< orphan*/  HCI_MON_NEW_INDEX_SIZE ; 
 int HCI_MON_OPEN_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hci_mon_hdr* FUNC5 (struct sk_buff*,int) ; 
 void* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct hci_dev *hdev, int event)
{
	struct hci_mon_hdr *hdr;
	struct hci_mon_new_index *ni;
	struct hci_mon_index_info *ii;
	struct sk_buff *skb;
	__le16 opcode;

	switch (event) {
	case HCI_DEV_REG:
		skb = FUNC2(HCI_MON_NEW_INDEX_SIZE, GFP_ATOMIC);
		if (!skb)
			return NULL;

		ni = FUNC6(skb, HCI_MON_NEW_INDEX_SIZE);
		ni->type = hdev->dev_type;
		ni->bus = hdev->bus;
		FUNC1(&ni->bdaddr, &hdev->bdaddr);
		FUNC4(ni->name, hdev->name, 8);

		opcode = FUNC3(HCI_MON_NEW_INDEX);
		break;

	case HCI_DEV_UNREG:
		skb = FUNC2(0, GFP_ATOMIC);
		if (!skb)
			return NULL;

		opcode = FUNC3(HCI_MON_DEL_INDEX);
		break;

	case HCI_DEV_SETUP:
		if (hdev->manufacturer == 0xffff)
			return NULL;

		/* fall through */

	case HCI_DEV_UP:
		skb = FUNC2(HCI_MON_INDEX_INFO_SIZE, GFP_ATOMIC);
		if (!skb)
			return NULL;

		ii = FUNC6(skb, HCI_MON_INDEX_INFO_SIZE);
		FUNC1(&ii->bdaddr, &hdev->bdaddr);
		ii->manufacturer = FUNC3(hdev->manufacturer);

		opcode = FUNC3(HCI_MON_INDEX_INFO);
		break;

	case HCI_DEV_OPEN:
		skb = FUNC2(0, GFP_ATOMIC);
		if (!skb)
			return NULL;

		opcode = FUNC3(HCI_MON_OPEN_INDEX);
		break;

	case HCI_DEV_CLOSE:
		skb = FUNC2(0, GFP_ATOMIC);
		if (!skb)
			return NULL;

		opcode = FUNC3(HCI_MON_CLOSE_INDEX);
		break;

	default:
		return NULL;
	}

	FUNC0(skb);

	hdr = FUNC5(skb, HCI_MON_HDR_SIZE);
	hdr->opcode = opcode;
	hdr->index = FUNC3(hdev->id);
	hdr->len = FUNC3(skb->len - HCI_MON_HDR_SIZE);

	return skb;
}