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
typedef  int u8 ;
typedef  int u32 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int /*<<< orphan*/  random_addr; int /*<<< orphan*/  le_adv_channel_map; } ;
struct hci_cp_le_set_ext_adv_params {int own_addr_type; int tx_power; int handle; int /*<<< orphan*/  bdaddr; void* secondary_phy; void* primary_phy; int /*<<< orphan*/  channel_map; void* evt_properties; int /*<<< orphan*/  max_interval; int /*<<< orphan*/  min_interval; } ;
struct hci_cp_le_set_adv_set_rand_addr {int own_addr_type; int tx_power; int handle; int /*<<< orphan*/  bdaddr; void* secondary_phy; void* primary_phy; int /*<<< orphan*/  channel_map; void* evt_properties; int /*<<< orphan*/  max_interval; int /*<<< orphan*/  min_interval; } ;
struct adv_info {int /*<<< orphan*/  random_addr; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int ADDR_LE_DEV_RANDOM ; 
 int /*<<< orphan*/ * BDADDR_ANY ; 
 int EINVAL ; 
 int EPERM ; 
 void* HCI_ADV_PHY_1M ; 
 void* HCI_ADV_PHY_2M ; 
 void* HCI_ADV_PHY_CODED ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_ADV_SET_RAND_ADDR ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_EXT_ADV_PARAMS ; 
 int /*<<< orphan*/  LE_EXT_ADV_CONN_IND ; 
 int /*<<< orphan*/  LE_EXT_ADV_NON_CONN_IND ; 
 int /*<<< orphan*/  LE_EXT_ADV_SCAN_IND ; 
 int /*<<< orphan*/  LE_LEGACY_ADV_IND ; 
 int /*<<< orphan*/  LE_LEGACY_ADV_SCAN_IND ; 
 int /*<<< orphan*/  LE_LEGACY_NONCONN_IND ; 
 int MGMT_ADV_FLAG_CONNECTABLE ; 
 int MGMT_ADV_FLAG_SEC_2M ; 
 int MGMT_ADV_FLAG_SEC_CODED ; 
 int MGMT_ADV_FLAG_SEC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hci_dev*,int) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int) ; 
 struct adv_info* FUNC6 (struct hci_dev*,int) ; 
 int FUNC7 (struct hci_dev*,int,int /*<<< orphan*/ ,struct adv_info*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_le_set_ext_adv_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_cp_le_set_ext_adv_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct hci_dev*) ; 

int FUNC13(struct hci_request *req, u8 instance)
{
	struct hci_cp_le_set_ext_adv_params cp;
	struct hci_dev *hdev = req->hdev;
	bool connectable;
	u32 flags;
	bdaddr_t random_addr;
	u8 own_addr_type;
	int err;
	struct adv_info *adv_instance;
	bool secondary_adv;
	/* In ext adv set param interval is 3 octets */
	const u8 adv_interval[3] = { 0x00, 0x08, 0x00 };

	if (instance > 0) {
		adv_instance = FUNC6(hdev, instance);
		if (!adv_instance)
			return -EINVAL;
	} else {
		adv_instance = NULL;
	}

	flags = FUNC4(hdev, instance);

	/* If the "connectable" instance flag was not set, then choose between
	 * ADV_IND and ADV_NONCONN_IND based on the global connectable setting.
	 */
	connectable = (flags & MGMT_ADV_FLAG_CONNECTABLE) ||
		      FUNC12(hdev);

	if (!FUNC9(hdev, connectable))
		return -EPERM;

	/* Set require_privacy to true only when non-connectable
	 * advertising is used. In that case it is fine to use a
	 * non-resolvable private address.
	 */
	err = FUNC7(hdev, !connectable,
				     FUNC0(hdev, flags), adv_instance,
				     &own_addr_type, &random_addr);
	if (err < 0)
		return err;

	FUNC11(&cp, 0, sizeof(cp));

	FUNC10(cp.min_interval, adv_interval, sizeof(cp.min_interval));
	FUNC10(cp.max_interval, adv_interval, sizeof(cp.max_interval));

	secondary_adv = (flags & MGMT_ADV_FLAG_SEC_MASK);

	if (connectable) {
		if (secondary_adv)
			cp.evt_properties = FUNC3(LE_EXT_ADV_CONN_IND);
		else
			cp.evt_properties = FUNC3(LE_LEGACY_ADV_IND);
	} else if (FUNC5(hdev, instance)) {
		if (secondary_adv)
			cp.evt_properties = FUNC3(LE_EXT_ADV_SCAN_IND);
		else
			cp.evt_properties = FUNC3(LE_LEGACY_ADV_SCAN_IND);
	} else {
		if (secondary_adv)
			cp.evt_properties = FUNC3(LE_EXT_ADV_NON_CONN_IND);
		else
			cp.evt_properties = FUNC3(LE_LEGACY_NONCONN_IND);
	}

	cp.own_addr_type = own_addr_type;
	cp.channel_map = hdev->le_adv_channel_map;
	cp.tx_power = 127;
	cp.handle = instance;

	if (flags & MGMT_ADV_FLAG_SEC_2M) {
		cp.primary_phy = HCI_ADV_PHY_1M;
		cp.secondary_phy = HCI_ADV_PHY_2M;
	} else if (flags & MGMT_ADV_FLAG_SEC_CODED) {
		cp.primary_phy = HCI_ADV_PHY_CODED;
		cp.secondary_phy = HCI_ADV_PHY_CODED;
	} else {
		/* In all other cases use 1M */
		cp.primary_phy = HCI_ADV_PHY_1M;
		cp.secondary_phy = HCI_ADV_PHY_1M;
	}

	FUNC8(req, HCI_OP_LE_SET_EXT_ADV_PARAMS, sizeof(cp), &cp);

	if (own_addr_type == ADDR_LE_DEV_RANDOM &&
	    FUNC1(&random_addr, BDADDR_ANY)) {
		struct hci_cp_le_set_adv_set_rand_addr cp;

		/* Check if random address need to be updated */
		if (adv_instance) {
			if (!FUNC1(&random_addr, &adv_instance->random_addr))
				return 0;
		} else {
			if (!FUNC1(&random_addr, &hdev->random_addr))
				return 0;
		}

		FUNC11(&cp, 0, sizeof(cp));

		cp.handle = 0;
		FUNC2(&cp.bdaddr, &random_addr);

		FUNC8(req,
			    HCI_OP_LE_SET_ADV_SET_RAND_ADDR,
			    sizeof(cp), &cp);
	}

	return 0;
}