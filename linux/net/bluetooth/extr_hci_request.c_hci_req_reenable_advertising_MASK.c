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
struct hci_request {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  cur_adv_instance; int /*<<< orphan*/  adv_instances; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,int) ; 
 int /*<<< orphan*/  adv_enable_complete ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_request*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct hci_dev *hdev)
{
	struct hci_request req;

	if (!FUNC6(hdev, HCI_ADVERTISING) &&
	    FUNC9(&hdev->adv_instances))
		return;

	FUNC7(&req, hdev);

	if (hdev->cur_adv_instance) {
		FUNC1(&req, hdev->cur_adv_instance,
						true);
	} else {
		if (FUNC5(hdev)) {
			FUNC2(&req, 0x00);
		} else {
			FUNC3(&req, 0x00);
			FUNC4(&req, 0x00);
			FUNC0(&req);
		}
	}

	FUNC8(&req, adv_enable_complete);
}