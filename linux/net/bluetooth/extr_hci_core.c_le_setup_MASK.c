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
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
 int /*<<< orphan*/  HCI_OP_LE_READ_BUFFER_SIZE ; 
 int /*<<< orphan*/  HCI_OP_LE_READ_LOCAL_FEATURES ; 
 int /*<<< orphan*/  HCI_OP_LE_READ_SUPPORTED_STATES ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC3(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;

	/* Read LE Buffer Size */
	FUNC1(req, HCI_OP_LE_READ_BUFFER_SIZE, 0, NULL);

	/* Read LE Local Supported Features */
	FUNC1(req, HCI_OP_LE_READ_LOCAL_FEATURES, 0, NULL);

	/* Read LE Supported States */
	FUNC1(req, HCI_OP_LE_READ_SUPPORTED_STATES, 0, NULL);

	/* LE-only controllers have LE implicitly enabled */
	if (!FUNC2(hdev))
		FUNC0(hdev, HCI_LE_ENABLED);
}