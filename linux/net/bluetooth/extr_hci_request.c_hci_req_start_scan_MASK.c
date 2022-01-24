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
typedef  void* u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_set_scan_param {void* filter_dup; void* enable; void* filter_policy; void* own_address_type; void* window; void* interval; void* type; int /*<<< orphan*/  scanning_phys; void* own_addr_type; scalar_t__ data; } ;
struct hci_cp_le_set_scan_enable {void* filter_dup; void* enable; void* filter_policy; void* own_address_type; void* window; void* interval; void* type; int /*<<< orphan*/  scanning_phys; void* own_addr_type; scalar_t__ data; } ;
struct hci_cp_le_set_ext_scan_params {void* filter_dup; void* enable; void* filter_policy; void* own_address_type; void* window; void* interval; void* type; int /*<<< orphan*/  scanning_phys; void* own_addr_type; scalar_t__ data; } ;
struct hci_cp_le_set_ext_scan_enable {void* filter_dup; void* enable; void* filter_policy; void* own_address_type; void* window; void* interval; void* type; int /*<<< orphan*/  scanning_phys; void* own_addr_type; scalar_t__ data; } ;
struct hci_cp_le_scan_phy_params {void* filter_dup; void* enable; void* filter_policy; void* own_address_type; void* window; void* interval; void* type; int /*<<< orphan*/  scanning_phys; void* own_addr_type; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  param_cp ;
typedef  int /*<<< orphan*/  ext_enable_cp ;
typedef  int /*<<< orphan*/  enable_cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_LE_SET_EXT_SCAN_ENABLE ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_EXT_SCAN_PARAMS ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_SCAN_ENABLE ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_SCAN_PARAM ; 
 void* LE_SCAN_ENABLE ; 
 void* LE_SCAN_FILTER_DUP_ENABLE ; 
 int /*<<< orphan*/  LE_SCAN_PHY_1M ; 
 int /*<<< orphan*/  LE_SCAN_PHY_CODED ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_le_set_scan_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_cp_le_set_scan_param*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC7(struct hci_request *req, u8 type, u16 interval,
			       u16 window, u8 own_addr_type, u8 filter_policy)
{
	struct hci_dev *hdev = req->hdev;

	/* Use ext scanning if set ext scan param and ext scan enable is
	 * supported
	 */
	if (FUNC6(hdev)) {
		struct hci_cp_le_set_ext_scan_params *ext_param_cp;
		struct hci_cp_le_set_ext_scan_enable ext_enable_cp;
		struct hci_cp_le_scan_phy_params *phy_params;
		u8 data[sizeof(*ext_param_cp) + sizeof(*phy_params) * 2];
		u32 plen;

		ext_param_cp = (void *)data;
		phy_params = (void *)ext_param_cp->data;

		FUNC2(ext_param_cp, 0, sizeof(*ext_param_cp));
		ext_param_cp->own_addr_type = own_addr_type;
		ext_param_cp->filter_policy = filter_policy;

		plen = sizeof(*ext_param_cp);

		if (FUNC3(hdev) || FUNC4(hdev)) {
			ext_param_cp->scanning_phys |= LE_SCAN_PHY_1M;

			FUNC2(phy_params, 0, sizeof(*phy_params));
			phy_params->type = type;
			phy_params->interval = FUNC0(interval);
			phy_params->window = FUNC0(window);

			plen += sizeof(*phy_params);
			phy_params++;
		}

		if (FUNC5(hdev)) {
			ext_param_cp->scanning_phys |= LE_SCAN_PHY_CODED;

			FUNC2(phy_params, 0, sizeof(*phy_params));
			phy_params->type = type;
			phy_params->interval = FUNC0(interval);
			phy_params->window = FUNC0(window);

			plen += sizeof(*phy_params);
			phy_params++;
		}

		FUNC1(req, HCI_OP_LE_SET_EXT_SCAN_PARAMS,
			    plen, ext_param_cp);

		FUNC2(&ext_enable_cp, 0, sizeof(ext_enable_cp));
		ext_enable_cp.enable = LE_SCAN_ENABLE;
		ext_enable_cp.filter_dup = LE_SCAN_FILTER_DUP_ENABLE;

		FUNC1(req, HCI_OP_LE_SET_EXT_SCAN_ENABLE,
			    sizeof(ext_enable_cp), &ext_enable_cp);
	} else {
		struct hci_cp_le_set_scan_param param_cp;
		struct hci_cp_le_set_scan_enable enable_cp;

		FUNC2(&param_cp, 0, sizeof(param_cp));
		param_cp.type = type;
		param_cp.interval = FUNC0(interval);
		param_cp.window = FUNC0(window);
		param_cp.own_address_type = own_addr_type;
		param_cp.filter_policy = filter_policy;
		FUNC1(req, HCI_OP_LE_SET_SCAN_PARAM, sizeof(param_cp),
			    &param_cp);

		FUNC2(&enable_cp, 0, sizeof(enable_cp));
		enable_cp.enable = LE_SCAN_ENABLE;
		enable_cp.filter_dup = LE_SCAN_FILTER_DUP_ENABLE;
		FUNC1(req, HCI_OP_LE_SET_SCAN_ENABLE, sizeof(enable_cp),
			    &enable_cp);
	}
}