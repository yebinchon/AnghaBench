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
struct hci_ev_le_meta {int subevent; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
#define  HCI_EV_LE_ADVERTISING_REPORT 137 
#define  HCI_EV_LE_CONN_COMPLETE 136 
#define  HCI_EV_LE_CONN_UPDATE_COMPLETE 135 
#define  HCI_EV_LE_DIRECT_ADV_REPORT 134 
#define  HCI_EV_LE_ENHANCED_CONN_COMPLETE 133 
#define  HCI_EV_LE_EXT_ADV_REPORT 132 
#define  HCI_EV_LE_EXT_ADV_SET_TERM 131 
#define  HCI_EV_LE_LTK_REQ 130 
#define  HCI_EV_LE_REMOTE_CONN_PARAM_REQ 129 
#define  HCI_EV_LE_REMOTE_FEAT_COMPLETE 128 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC11(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_le_meta *le_ev = (void *) skb->data;

	FUNC10(skb, sizeof(*le_ev));

	switch (le_ev->subevent) {
	case HCI_EV_LE_CONN_COMPLETE:
		FUNC1(hdev, skb);
		break;

	case HCI_EV_LE_CONN_UPDATE_COMPLETE:
		FUNC2(hdev, skb);
		break;

	case HCI_EV_LE_ADVERTISING_REPORT:
		FUNC0(hdev, skb);
		break;

	case HCI_EV_LE_REMOTE_FEAT_COMPLETE:
		FUNC9(hdev, skb);
		break;

	case HCI_EV_LE_LTK_REQ:
		FUNC7(hdev, skb);
		break;

	case HCI_EV_LE_REMOTE_CONN_PARAM_REQ:
		FUNC8(hdev, skb);
		break;

	case HCI_EV_LE_DIRECT_ADV_REPORT:
		FUNC3(hdev, skb);
		break;

	case HCI_EV_LE_EXT_ADV_REPORT:
		FUNC5(hdev, skb);
		break;

	case HCI_EV_LE_ENHANCED_CONN_COMPLETE:
		FUNC4(hdev, skb);
		break;

	case HCI_EV_LE_EXT_ADV_SET_TERM:
		FUNC6(hdev, skb);
		break;

	default:
		break;
	}
}