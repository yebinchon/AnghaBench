#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct TYPE_9__ {int* b; } ;
struct hci_dev {int rpa_timeout; TYPE_1__ static_addr; TYPE_1__ random_addr; TYPE_1__ bdaddr; int /*<<< orphan*/  rpa_expired; int /*<<< orphan*/  workqueue; TYPE_1__ rpa; int /*<<< orphan*/  irk; } ;
typedef  TYPE_1__ bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_LE_DEV_PUBLIC ; 
 int /*<<< orphan*/  ADDR_LE_DEV_RANDOM ; 
 TYPE_1__* BDADDR_ANY ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_FORCE_STATIC_ADDR ; 
 int /*<<< orphan*/  HCI_OP_LE_SET_RANDOM_ADDR ; 
 int /*<<< orphan*/  HCI_RPA_EXPIRED ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*,TYPE_1__*) ; 
 int FUNC9 (struct hci_dev*,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC10(struct hci_request *req, bool require_privacy,
			      bool use_rpa, u8 *own_addr_type)
{
	struct hci_dev *hdev = req->hdev;
	int err;

	/* If privacy is enabled use a resolvable private address. If
	 * current RPA has expired or there is something else than
	 * the current RPA in use, then generate a new one.
	 */
	if (use_rpa) {
		int to;

		*own_addr_type = ADDR_LE_DEV_RANDOM;

		if (!FUNC3(hdev, HCI_RPA_EXPIRED) &&
		    !FUNC0(&hdev->random_addr, &hdev->rpa))
			return 0;

		err = FUNC9(hdev, hdev->irk, &hdev->rpa);
		if (err < 0) {
			FUNC1(hdev, "failed to generate new RPA");
			return err;
		}

		FUNC8(req, &hdev->rpa);

		to = FUNC6(hdev->rpa_timeout * 1000);
		FUNC7(hdev->workqueue, &hdev->rpa_expired, to);

		return 0;
	}

	/* In case of required privacy without resolvable private address,
	 * use an non-resolvable private address. This is useful for active
	 * scanning and non-connectable advertising.
	 */
	if (require_privacy) {
		bdaddr_t nrpa;

		while (true) {
			/* The non-resolvable private address is generated
			 * from random six bytes with the two most significant
			 * bits cleared.
			 */
			FUNC2(&nrpa, 6);
			nrpa.b[5] &= 0x3f;

			/* The non-resolvable private address shall not be
			 * equal to the public address.
			 */
			if (FUNC0(&hdev->bdaddr, &nrpa))
				break;
		}

		*own_addr_type = ADDR_LE_DEV_RANDOM;
		FUNC8(req, &nrpa);
		return 0;
	}

	/* If forcing static address is in use or there is no public
	 * address use the static address as random address (but skip
	 * the HCI command if the current random address is already the
	 * static one.
	 *
	 * In case BR/EDR has been disabled on a dual-mode controller
	 * and a static address has been configured, then use that
	 * address instead of the public BR/EDR address.
	 */
	if (FUNC4(hdev, HCI_FORCE_STATIC_ADDR) ||
	    !FUNC0(&hdev->bdaddr, BDADDR_ANY) ||
	    (!FUNC4(hdev, HCI_BREDR_ENABLED) &&
	     FUNC0(&hdev->static_addr, BDADDR_ANY))) {
		*own_addr_type = ADDR_LE_DEV_RANDOM;
		if (FUNC0(&hdev->static_addr, &hdev->random_addr))
			FUNC5(req, HCI_OP_LE_SET_RANDOM_ADDR, 6,
				    &hdev->static_addr);
		return 0;
	}

	/* Neither privacy nor static address is being used so use a
	 * public address.
	 */
	*own_addr_type = ADDR_LE_DEV_PUBLIC;

	return 0;
}