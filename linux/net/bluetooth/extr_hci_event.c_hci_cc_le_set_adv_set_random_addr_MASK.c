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
struct hci_dev {int /*<<< orphan*/  cur_adv_instance; int /*<<< orphan*/  random_addr; } ;
struct hci_cp_le_set_adv_set_rand_addr {int /*<<< orphan*/  bdaddr; } ;
struct adv_info {int /*<<< orphan*/  random_addr; } ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_LE_SET_ADV_SET_RAND_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct adv_info* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct hci_cp_le_set_adv_set_rand_addr* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev,
                                              struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	struct hci_cp_le_set_adv_set_rand_addr *cp;
	struct adv_info *adv_instance;

	if (status)
		return;

	cp = FUNC4(hdev, HCI_OP_LE_SET_ADV_SET_RAND_ADDR);
	if (!cp)
		return;

	FUNC1(hdev);

	if (!hdev->cur_adv_instance) {
		/* Store in hdev for instance 0 (Set adv and Directed advs) */
		FUNC0(&hdev->random_addr, &cp->bdaddr);
	} else {
		adv_instance = FUNC3(hdev,
						     hdev->cur_adv_instance);
		if (adv_instance)
			FUNC0(&adv_instance->random_addr, &cp->bdaddr);
	}

	FUNC2(hdev);
}