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
struct hci_inquiry_req {int /*<<< orphan*/  num_rsp; int /*<<< orphan*/  length; int /*<<< orphan*/  lap; } ;
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct hci_cp_inquiry {int /*<<< orphan*/  num_rsp; int /*<<< orphan*/  length; int /*<<< orphan*/  lap; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_INQUIRY ; 
 int /*<<< orphan*/  HCI_OP_INQUIRY ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_inquiry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_request *req, unsigned long opt)
{
	struct hci_inquiry_req *ir = (struct hci_inquiry_req *) opt;
	struct hci_dev *hdev = req->hdev;
	struct hci_cp_inquiry cp;

	FUNC0("%s", hdev->name);

	if (FUNC3(HCI_INQUIRY, &hdev->flags))
		return 0;

	/* Start Inquiry */
	FUNC2(&cp.lap, &ir->lap, 3);
	cp.length  = ir->length;
	cp.num_rsp = ir->num_rsp;
	FUNC1(req, HCI_OP_INQUIRY, sizeof(cp), &cp);

	return 0;
}