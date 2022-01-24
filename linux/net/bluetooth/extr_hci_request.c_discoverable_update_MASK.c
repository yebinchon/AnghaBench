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

/* Variables and functions */
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_LIMITED_PRIVACY ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*) ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 scalar_t__ FUNC7 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_request*) ; 

__attribute__((used)) static int FUNC10(struct hci_request *req, unsigned long opt)
{
	struct hci_dev *hdev = req->hdev;

	FUNC6(hdev);

	if (FUNC7(hdev, HCI_BREDR_ENABLED)) {
		FUNC9(req);
		FUNC4(req);
		FUNC3(req);
	}

	/* Advertising instances don't use the global discoverable setting, so
	 * only update AD if advertising was enabled using Set Advertising.
	 */
	if (FUNC7(hdev, HCI_ADVERTISING)) {
		FUNC2(req, 0x00);

		/* Discoverable mode affects the local advertising
		 * address in limited privacy mode.
		 */
		if (FUNC7(hdev, HCI_LIMITED_PRIVACY)) {
			if (FUNC5(hdev))
				FUNC1(req, 0x00);
			else
				FUNC0(req);
		}
	}

	FUNC8(hdev);

	return 0;
}