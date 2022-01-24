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
struct hci_dev {scalar_t__ set_bdaddr; int /*<<< orphan*/  quirks; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  HCI_OP_READ_BD_ADDR ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_VERSION ; 
 int /*<<< orphan*/  HCI_QUIRK_RESET_ON_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_request *req, unsigned long opt)
{
	struct hci_dev *hdev = req->hdev;

	FUNC0("%s %ld", hdev->name, opt);

	/* Reset */
	if (!FUNC3(HCI_QUIRK_RESET_ON_CLOSE, &hdev->quirks))
		FUNC2(req, 0);

	/* Read Local Version */
	FUNC1(req, HCI_OP_READ_LOCAL_VERSION, 0, NULL);

	/* Read BD Address */
	if (hdev->set_bdaddr)
		FUNC1(req, HCI_OP_READ_BD_ADDR, 0, NULL);

	return 0;
}