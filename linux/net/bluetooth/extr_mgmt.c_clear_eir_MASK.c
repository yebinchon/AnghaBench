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
struct hci_dev {struct hci_cp_write_eir* eir; } ;
struct hci_cp_write_eir {int dummy; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_WRITE_EIR ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_write_eir*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_cp_write_eir*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	struct hci_cp_write_eir cp;

	if (!FUNC1(hdev))
		return;

	FUNC2(hdev->eir, 0, sizeof(hdev->eir));

	FUNC2(&cp, 0, sizeof(cp));

	FUNC0(req, HCI_OP_WRITE_EIR, sizeof(cp), &cp);
}