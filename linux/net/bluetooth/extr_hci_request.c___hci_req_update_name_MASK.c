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
struct hci_dev {int /*<<< orphan*/  dev_name; } ;
struct hci_cp_write_local_name {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_WRITE_LOCAL_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_write_local_name*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	struct hci_cp_write_local_name cp;

	FUNC1(cp.name, hdev->dev_name, sizeof(cp.name));

	FUNC0(req, HCI_OP_WRITE_LOCAL_NAME, sizeof(cp), &cp);
}