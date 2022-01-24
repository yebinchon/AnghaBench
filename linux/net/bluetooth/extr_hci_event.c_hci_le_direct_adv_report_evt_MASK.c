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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct hci_ev_le_direct_adv_info {int /*<<< orphan*/  rssi; int /*<<< orphan*/  direct_addr_type; int /*<<< orphan*/  direct_addr; int /*<<< orphan*/  bdaddr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  evt_type; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hci_dev *hdev,
					 struct sk_buff *skb)
{
	u8 num_reports = skb->data[0];
	void *ptr = &skb->data[1];

	FUNC0(hdev);

	while (num_reports--) {
		struct hci_ev_le_direct_adv_info *ev = ptr;

		FUNC2(hdev, ev->evt_type, &ev->bdaddr,
				   ev->bdaddr_type, &ev->direct_addr,
				   ev->direct_addr_type, ev->rssi, NULL, 0);

		ptr += sizeof(*ev);
	}

	FUNC1(hdev);
}