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
struct hci_cp_write_le_host_supported {int le; int simul; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_OP_WRITE_LE_HOST_SUPPORTED ; 
 scalar_t__ FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_write_le_host_supported*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_cp_write_le_host_supported*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	struct hci_cp_write_le_host_supported cp;

	/* LE-only devices do not support explicit enablement */
	if (!FUNC2(hdev))
		return;

	FUNC4(&cp, 0, sizeof(cp));

	if (FUNC0(hdev, HCI_LE_ENABLED)) {
		cp.le = 0x01;
		cp.simul = 0x00;
	}

	if (cp.le != FUNC3(hdev))
		FUNC1(req, HCI_OP_WRITE_LE_HOST_SUPPORTED, sizeof(cp),
			    &cp);
}