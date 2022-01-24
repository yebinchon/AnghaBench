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
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_le_set_scan_enable {void* enable; } ;
struct hci_cp_le_set_ext_scan_enable {void* enable; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_LE_SET_EXT_SCAN_ENABLE ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_SCAN_ENABLE ; 
 void* LE_SCAN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_le_set_scan_enable*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_cp_le_set_scan_enable*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct hci_dev*) ; 

void FUNC3(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;

	if (FUNC2(hdev)) {
		struct hci_cp_le_set_ext_scan_enable cp;

		FUNC1(&cp, 0, sizeof(cp));
		cp.enable = LE_SCAN_DISABLE;
		FUNC0(req, HCI_OP_LE_SET_EXT_SCAN_ENABLE, sizeof(cp),
			    &cp);
	} else {
		struct hci_cp_le_set_scan_enable cp;

		FUNC1(&cp, 0, sizeof(cp));
		cp.enable = LE_SCAN_DISABLE;
		FUNC0(req, HCI_OP_LE_SET_SCAN_ENABLE, sizeof(cp), &cp);
	}
}