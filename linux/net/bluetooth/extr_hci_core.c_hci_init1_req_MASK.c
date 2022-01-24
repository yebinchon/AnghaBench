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
struct hci_dev {int dev_type; int /*<<< orphan*/  quirks; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long) ; 
#define  HCI_AMP 129 
#define  HCI_PRIMARY 128 
 int /*<<< orphan*/  HCI_QUIRK_RESET_ON_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_request *req, unsigned long opt)
{
	struct hci_dev *hdev = req->hdev;

	FUNC0("%s %ld", hdev->name, opt);

	/* Reset */
	if (!FUNC5(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks))
		FUNC4(req, 0);

	switch (hdev->dev_type) {
	case HCI_PRIMARY:
		FUNC2(req);
		break;
	case HCI_AMP:
		FUNC1(req);
		break;
	default:
		FUNC3(hdev, "Unknown device type %d", hdev->dev_type);
		break;
	}

	return 0;
}