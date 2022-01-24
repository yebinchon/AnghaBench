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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__* data; } ;
struct hci_ev_le_ext_adv_report {scalar_t__ length; int /*<<< orphan*/  data; int /*<<< orphan*/  rssi; int /*<<< orphan*/  bdaddr_type; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  evt_type; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ LE_ADV_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	u8 num_reports = skb->data[0];
	void *ptr = &skb->data[1];

	FUNC2(hdev);

	while (num_reports--) {
		struct hci_ev_le_ext_adv_report *ev = ptr;
		u8 legacy_evt_type;
		u16 evt_type;

		evt_type = FUNC0(ev->evt_type);
		legacy_evt_type = FUNC1(evt_type);
		if (legacy_evt_type != LE_ADV_INVALID) {
			FUNC4(hdev, legacy_evt_type, &ev->bdaddr,
					   ev->bdaddr_type, NULL, 0, ev->rssi,
					   ev->data, ev->length);
		}

		ptr += sizeof(*ev) + ev->length;
	}

	FUNC3(hdev);
}