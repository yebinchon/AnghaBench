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
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_ev_num_comp_pkts {int num_hndl; struct hci_comp_pkts_info* handles; } ;
struct hci_dev {scalar_t__ flow_ctl_mode; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  sco_pkts; int /*<<< orphan*/  sco_cnt; int /*<<< orphan*/  acl_pkts; int /*<<< orphan*/  acl_cnt; int /*<<< orphan*/  le_pkts; int /*<<< orphan*/  le_cnt; int /*<<< orphan*/  name; } ;
struct hci_conn {int type; int /*<<< orphan*/  sent; } ;
struct hci_comp_pkts_info {int /*<<< orphan*/  count; int /*<<< orphan*/  handle; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
#define  ACL_LINK 130 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ HCI_FLOW_CTL_MODE_PACKET_BASED ; 
#define  LE_LINK 129 
#define  SCO_LINK 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*,int,...) ; 
 int /*<<< orphan*/  handles ; 
 struct hci_conn* FUNC3 (struct hci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hci_ev_num_comp_pkts*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_num_comp_pkts *ev = (void *) skb->data;
	int i;

	if (hdev->flow_ctl_mode != HCI_FLOW_CTL_MODE_PACKET_BASED) {
		FUNC2(hdev, "wrong event for mode %d", hdev->flow_ctl_mode);
		return;
	}

	if (skb->len < sizeof(*ev) ||
	    skb->len < FUNC5(ev, handles, ev->num_hndl)) {
		FUNC0("%s bad parameters", hdev->name);
		return;
	}

	FUNC0("%s num_hndl %d", hdev->name, ev->num_hndl);

	for (i = 0; i < ev->num_hndl; i++) {
		struct hci_comp_pkts_info *info = &ev->handles[i];
		struct hci_conn *conn;
		__u16  handle, count;

		handle = FUNC1(info->handle);
		count  = FUNC1(info->count);

		conn = FUNC3(hdev, handle);
		if (!conn)
			continue;

		conn->sent -= count;

		switch (conn->type) {
		case ACL_LINK:
			hdev->acl_cnt += count;
			if (hdev->acl_cnt > hdev->acl_pkts)
				hdev->acl_cnt = hdev->acl_pkts;
			break;

		case LE_LINK:
			if (hdev->le_pkts) {
				hdev->le_cnt += count;
				if (hdev->le_cnt > hdev->le_pkts)
					hdev->le_cnt = hdev->le_pkts;
			} else {
				hdev->acl_cnt += count;
				if (hdev->acl_cnt > hdev->acl_pkts)
					hdev->acl_cnt = hdev->acl_pkts;
			}
			break;

		case SCO_LINK:
			hdev->sco_cnt += count;
			if (hdev->sco_cnt > hdev->sco_pkts)
				hdev->sco_cnt = hdev->sco_pkts;
			break;

		default:
			FUNC2(hdev, "unknown type %d conn %p",
				   conn->type, conn);
			break;
		}
	}

	FUNC4(hdev->workqueue, &hdev->tx_work);
}