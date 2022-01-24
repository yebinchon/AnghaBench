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
struct hci_ev_le_advertising_info {size_t length; int /*<<< orphan*/ * data; int /*<<< orphan*/  bdaddr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  evt_type; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 size_t HCI_MAX_AD_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	u8 num_reports = skb->data[0];
	void *ptr = &skb->data[1];

	FUNC1(hdev);

	while (num_reports--) {
		struct hci_ev_le_advertising_info *ev = ptr;
		s8 rssi;

		if (ev->length <= HCI_MAX_AD_LENGTH) {
			rssi = ev->data[ev->length];
			FUNC3(hdev, ev->evt_type, &ev->bdaddr,
					   ev->bdaddr_type, NULL, 0, rssi,
					   ev->data, ev->length);
		} else {
			FUNC0(hdev, "Dropping invalid advertising data");
		}

		ptr += sizeof(*ev) + ev->length + 1;
	}

	FUNC2(hdev);
}