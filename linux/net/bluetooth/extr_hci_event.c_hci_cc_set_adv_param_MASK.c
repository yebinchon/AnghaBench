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
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int /*<<< orphan*/  adv_addr_type; int /*<<< orphan*/  name; } ;
struct hci_cp_le_set_adv_param {int /*<<< orphan*/  own_address_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_ADV_PARAM ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct hci_cp_le_set_adv_param* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_cp_le_set_adv_param *cp;
	u8 status = *((u8 *) skb->data);

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	if (status)
		return;

	cp = FUNC3(hdev, HCI_OP_LE_SET_ADV_PARAM);
	if (!cp)
		return;

	FUNC1(hdev);
	hdev->adv_addr_type = cp->own_address_type;
	FUNC2(hdev);
}