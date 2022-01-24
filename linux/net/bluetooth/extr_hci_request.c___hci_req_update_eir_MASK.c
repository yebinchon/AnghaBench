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
struct hci_dev {int /*<<< orphan*/  eir; } ;
struct hci_cp_write_eir {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_WRITE_EIR ; 
 int /*<<< orphan*/  HCI_SERVICE_CACHE ; 
 int /*<<< orphan*/  HCI_SSP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_write_eir*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_cp_write_eir*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	struct hci_cp_write_eir cp;

	if (!FUNC3(hdev))
		return;

	if (!FUNC4(hdev))
		return;

	if (!FUNC1(hdev, HCI_SSP_ENABLED))
		return;

	if (FUNC1(hdev, HCI_SERVICE_CACHE))
		return;

	FUNC7(&cp, 0, sizeof(cp));

	FUNC0(hdev, cp.data);

	if (FUNC5(cp.data, hdev->eir, sizeof(cp.data)) == 0)
		return;

	FUNC6(hdev->eir, cp.data, sizeof(cp.data));

	FUNC2(req, HCI_OP_WRITE_EIR, sizeof(cp), &cp);
}