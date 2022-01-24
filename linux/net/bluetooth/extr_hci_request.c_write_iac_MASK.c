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
struct hci_dev {int /*<<< orphan*/  num_iac; } ;
struct hci_cp_write_current_iac_lap {int num_iac; int* iac_lap; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_LIMITED_DISCOVERABLE ; 
 int /*<<< orphan*/  HCI_OP_WRITE_CURRENT_IAC_LAP ; 
 scalar_t__ FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_write_current_iac_lap*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static void FUNC3(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	struct hci_cp_write_current_iac_lap cp;

	if (!FUNC0(hdev, HCI_DISCOVERABLE))
		return;

	if (FUNC0(hdev, HCI_LIMITED_DISCOVERABLE)) {
		/* Limited discoverable mode */
		cp.num_iac = FUNC2(u8, hdev->num_iac, 2);
		cp.iac_lap[0] = 0x00;	/* LIAC */
		cp.iac_lap[1] = 0x8b;
		cp.iac_lap[2] = 0x9e;
		cp.iac_lap[3] = 0x33;	/* GIAC */
		cp.iac_lap[4] = 0x8b;
		cp.iac_lap[5] = 0x9e;
	} else {
		/* General discoverable mode */
		cp.num_iac = 1;
		cp.iac_lap[0] = 0x33;	/* GIAC */
		cp.iac_lap[1] = 0x8b;
		cp.iac_lap[2] = 0x9e;
	}

	FUNC1(req, HCI_OP_WRITE_CURRENT_IAC_LAP,
		    (cp.num_iac * 3) + 1, &cp);
}