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
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_RANDOM_ADDR ; 
 int /*<<< orphan*/  HCI_RPA_EXPIRED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hci_request *req, bdaddr_t *rpa)
{
	struct hci_dev *hdev = req->hdev;

	/* If we're advertising or initiating an LE connection we can't
	 * go ahead and change the random address at this time. This is
	 * because the eventual initiator address used for the
	 * subsequently created connection will be undefined (some
	 * controllers use the new address and others the one we had
	 * when the operation started).
	 *
	 * In this kind of scenario skip the update and let the random
	 * address be updated at the next cycle.
	 */
	if (FUNC2(hdev, HCI_LE_ADV) ||
	    FUNC3(hdev)) {
		FUNC0("Deferring random address update");
		FUNC1(hdev, HCI_RPA_EXPIRED);
		return;
	}

	FUNC4(req, HCI_OP_LE_SET_RANDOM_ADDR, 6, rpa);
}