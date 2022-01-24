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
struct hci_rp_le_set_ext_adv_params {int /*<<< orphan*/  tx_power; scalar_t__ status; } ;
struct hci_dev {int /*<<< orphan*/  cur_adv_instance; int /*<<< orphan*/  adv_tx_power; int /*<<< orphan*/  adv_addr_type; int /*<<< orphan*/  name; } ;
struct hci_cp_le_set_ext_adv_params {int /*<<< orphan*/  own_addr_type; } ;
struct adv_info {int /*<<< orphan*/  tx_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_EXT_ADV_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct adv_info* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct hci_cp_le_set_ext_adv_params* FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_le_set_ext_adv_params *rp = (void *) skb->data;
	struct hci_cp_le_set_ext_adv_params *cp;
	struct adv_info *adv_instance;

	FUNC0("%s status 0x%2.2x", hdev->name, rp->status);

	if (rp->status)
		return;

	cp = FUNC5(hdev, HCI_OP_LE_SET_EXT_ADV_PARAMS);
	if (!cp)
		return;

	FUNC1(hdev);
	hdev->adv_addr_type = cp->own_addr_type;
	if (!hdev->cur_adv_instance) {
		/* Store in hdev for instance 0 */
		hdev->adv_tx_power = rp->tx_power;
	} else {
		adv_instance = FUNC3(hdev,
						     hdev->cur_adv_instance);
		if (adv_instance)
			adv_instance->tx_power = rp->tx_power;
	}
	/* Update adv data as tx power is known now */
	FUNC4(hdev, hdev->cur_adv_instance);
	FUNC2(hdev);
}