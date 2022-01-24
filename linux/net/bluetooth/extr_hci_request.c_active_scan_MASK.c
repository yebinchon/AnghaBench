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
typedef  unsigned long uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_LE_DEV_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DISCOV_LE_SCAN_WIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  LE_SCAN_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hci_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC11(struct hci_request *req, unsigned long opt)
{
	uint16_t interval = opt;
	struct hci_dev *hdev = req->hdev;
	u8 own_addr_type;
	int err;

	FUNC0("%s", hdev->name);

	if (FUNC4(hdev, HCI_LE_ADV)) {
		FUNC3(hdev);

		/* Don't let discovery abort an outgoing connection attempt
		 * that's using directed advertising.
		 */
		if (FUNC6(hdev)) {
			FUNC5(hdev);
			return -EBUSY;
		}

		FUNC2(hdev);
		FUNC5(hdev);

		FUNC1(req);
	}

	/* If controller is scanning, it means the background scanning is
	 * running. Thus, we should temporarily stop it in order to set the
	 * discovery scanning parameters.
	 */
	if (FUNC4(hdev, HCI_LE_SCAN))
		FUNC7(req);

	/* All active scans will be done with either a resolvable private
	 * address (when privacy feature has been enabled) or non-resolvable
	 * private address.
	 */
	err = FUNC9(req, true, FUNC10(hdev),
					&own_addr_type);
	if (err < 0)
		own_addr_type = ADDR_LE_DEV_PUBLIC;

	FUNC8(req, LE_SCAN_ACTIVE, interval, DISCOV_LE_SCAN_WIN,
			   own_addr_type, 0);
	return 0;
}