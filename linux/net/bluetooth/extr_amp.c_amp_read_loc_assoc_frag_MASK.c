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
struct hci_request {int dummy; } ;
struct amp_assoc {int /*<<< orphan*/  offset; } ;
struct hci_dev {int /*<<< orphan*/  amp_assoc_size; int /*<<< orphan*/  name; struct amp_assoc loc_assoc; } ;
struct hci_cp_read_local_amp_assoc {void* len_so_far; void* max_len; int /*<<< orphan*/  phy_handle; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_STATUS_INVALID_CTRL_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_AMP_ASSOC ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_read_local_amp_assoc*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_request*,struct hci_dev*) ; 
 int FUNC5 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_local_amp_assoc_complete ; 

void FUNC6(struct hci_dev *hdev, u8 phy_handle)
{
	struct hci_cp_read_local_amp_assoc cp;
	struct amp_assoc *loc_assoc = &hdev->loc_assoc;
	struct hci_request req;
	int err;

	FUNC0("%s handle %d", hdev->name, phy_handle);

	cp.phy_handle = phy_handle;
	cp.max_len = FUNC2(hdev->amp_assoc_size);
	cp.len_so_far = FUNC2(loc_assoc->offset);

	FUNC4(&req, hdev);
	FUNC3(&req, HCI_OP_READ_LOCAL_AMP_ASSOC, sizeof(cp), &cp);
	err = FUNC5(&req, read_local_amp_assoc_complete);
	if (err < 0)
		FUNC1(hdev, A2MP_STATUS_INVALID_CTRL_ID);
}