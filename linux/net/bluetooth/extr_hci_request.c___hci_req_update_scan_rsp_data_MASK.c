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
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {void* scan_rsp_data_len; int /*<<< orphan*/  scan_rsp_data; } ;
struct hci_cp_le_set_scan_rsp_data {void* length; int /*<<< orphan*/  data; int /*<<< orphan*/  frag_pref; int /*<<< orphan*/  operation; scalar_t__ handle; } ;
struct hci_cp_le_set_ext_scan_rsp_data {void* length; int /*<<< orphan*/  data; int /*<<< orphan*/  frag_pref; int /*<<< orphan*/  operation; scalar_t__ handle; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_EXT_SCAN_RSP_DATA ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_SCAN_RSP_DATA ; 
 int /*<<< orphan*/  LE_SET_ADV_DATA_NO_FRAG ; 
 int /*<<< orphan*/  LE_SET_ADV_DATA_OP_COMPLETE ; 
 void* FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_le_set_scan_rsp_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_cp_le_set_scan_rsp_data*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct hci_request *req, u8 instance)
{
	struct hci_dev *hdev = req->hdev;
	u8 len;

	if (!FUNC3(hdev, HCI_LE_ENABLED))
		return;

	if (FUNC2(hdev)) {
		struct hci_cp_le_set_ext_scan_rsp_data cp;

		FUNC7(&cp, 0, sizeof(cp));

		if (instance)
			len = FUNC1(hdev, instance,
							    cp.data);
		else
			len = FUNC0(hdev, cp.data);

		if (hdev->scan_rsp_data_len == len &&
		    !FUNC5(cp.data, hdev->scan_rsp_data, len))
			return;

		FUNC6(hdev->scan_rsp_data, cp.data, sizeof(cp.data));
		hdev->scan_rsp_data_len = len;

		cp.handle = 0;
		cp.length = len;
		cp.operation = LE_SET_ADV_DATA_OP_COMPLETE;
		cp.frag_pref = LE_SET_ADV_DATA_NO_FRAG;

		FUNC4(req, HCI_OP_LE_SET_EXT_SCAN_RSP_DATA, sizeof(cp),
			    &cp);
	} else {
		struct hci_cp_le_set_scan_rsp_data cp;

		FUNC7(&cp, 0, sizeof(cp));

		if (instance)
			len = FUNC1(hdev, instance,
							    cp.data);
		else
			len = FUNC0(hdev, cp.data);

		if (hdev->scan_rsp_data_len == len &&
		    !FUNC5(cp.data, hdev->scan_rsp_data, len))
			return;

		FUNC6(hdev->scan_rsp_data, cp.data, sizeof(cp.data));
		hdev->scan_rsp_data_len = len;

		cp.length = len;

		FUNC4(req, HCI_OP_LE_SET_SCAN_RSP_DATA, sizeof(cp), &cp);
	}
}