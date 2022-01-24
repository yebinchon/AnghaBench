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
typedef  int /*<<< orphan*/  u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_LE_ADV ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 

int FUNC5(struct hci_request *req, u8 instance)
{
	struct hci_dev *hdev = req->hdev;
	int err;

	if (FUNC4(hdev, HCI_LE_ADV))
		FUNC0(req);

	err = FUNC2(req, instance);
	if (err < 0)
		return err;

	FUNC3(req, instance);
	FUNC1(req, instance);

	return 0;
}