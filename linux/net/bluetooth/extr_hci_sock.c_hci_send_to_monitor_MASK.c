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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;
typedef  void* __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  incoming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 132 
 int /*<<< orphan*/  HCI_CHANNEL_MONITOR ; 
#define  HCI_COMMAND_PKT 131 
#define  HCI_DIAG_PKT 130 
#define  HCI_EVENT_PKT 129 
 int /*<<< orphan*/  HCI_MON_ACL_RX_PKT ; 
 int /*<<< orphan*/  HCI_MON_ACL_TX_PKT ; 
 int /*<<< orphan*/  HCI_MON_COMMAND_PKT ; 
 int /*<<< orphan*/  HCI_MON_EVENT_PKT ; 
 int /*<<< orphan*/  HCI_MON_HDR_SIZE ; 
 int /*<<< orphan*/  HCI_MON_SCO_RX_PKT ; 
 int /*<<< orphan*/  HCI_MON_SCO_TX_PKT ; 
 int /*<<< orphan*/  HCI_MON_VENDOR_DIAG ; 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  HCI_SOCK_TRUSTED ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  monitor_promisc ; 
 struct hci_mon_hdr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC9(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct sk_buff *skb_copy = NULL;
	struct hci_mon_hdr *hdr;
	__le16 opcode;

	if (!FUNC2(&monitor_promisc))
		return;

	FUNC0("hdev %p len %d", hdev, skb->len);

	switch (FUNC6(skb)) {
	case HCI_COMMAND_PKT:
		opcode = FUNC4(HCI_MON_COMMAND_PKT);
		break;
	case HCI_EVENT_PKT:
		opcode = FUNC4(HCI_MON_EVENT_PKT);
		break;
	case HCI_ACLDATA_PKT:
		if (FUNC3(skb)->incoming)
			opcode = FUNC4(HCI_MON_ACL_RX_PKT);
		else
			opcode = FUNC4(HCI_MON_ACL_TX_PKT);
		break;
	case HCI_SCODATA_PKT:
		if (FUNC3(skb)->incoming)
			opcode = FUNC4(HCI_MON_SCO_RX_PKT);
		else
			opcode = FUNC4(HCI_MON_SCO_TX_PKT);
		break;
	case HCI_DIAG_PKT:
		opcode = FUNC4(HCI_MON_VENDOR_DIAG);
		break;
	default:
		return;
	}

	/* Create a private copy with headroom */
	skb_copy = FUNC1(skb, HCI_MON_HDR_SIZE, GFP_ATOMIC, true);
	if (!skb_copy)
		return;

	/* Put header before the data */
	hdr = FUNC8(skb_copy, HCI_MON_HDR_SIZE);
	hdr->opcode = opcode;
	hdr->index = FUNC4(hdev->id);
	hdr->len = FUNC4(skb->len);

	FUNC5(HCI_CHANNEL_MONITOR, skb_copy,
			    HCI_SOCK_TRUSTED, NULL);
	FUNC7(skb_copy);
}