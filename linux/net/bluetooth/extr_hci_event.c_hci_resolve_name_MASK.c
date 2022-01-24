#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  pscan_mode; int /*<<< orphan*/  pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_dev {int dummy; } ;
struct hci_cp_remote_name_req {int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  pscan_mode; int /*<<< orphan*/  pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_REMOTE_NAME_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_remote_name_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_cp_remote_name_req*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hci_dev *hdev,
				   struct inquiry_entry *e)
{
	struct hci_cp_remote_name_req cp;

	FUNC2(&cp, 0, sizeof(cp));

	FUNC0(&cp.bdaddr, &e->data.bdaddr);
	cp.pscan_rep_mode = e->data.pscan_rep_mode;
	cp.pscan_mode = e->data.pscan_mode;
	cp.clock_offset = e->data.clock_offset;

	return FUNC1(hdev, HCI_OP_REMOTE_NAME_REQ, sizeof(cp), &cp);
}