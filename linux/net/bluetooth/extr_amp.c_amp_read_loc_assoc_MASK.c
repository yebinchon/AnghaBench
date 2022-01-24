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
struct hci_cp_read_local_amp_assoc {int /*<<< orphan*/  max_len; } ;
struct hci_dev {int /*<<< orphan*/  amp_assoc_size; struct hci_cp_read_local_amp_assoc loc_assoc; } ;
struct amp_mgr {int /*<<< orphan*/  state; } ;
struct amp_assoc {int dummy; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_STATUS_INVALID_CTRL_ID ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_AMP_ASSOC ; 
 int /*<<< orphan*/  READ_LOC_AMP_ASSOC ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_read_local_amp_assoc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,struct hci_dev*) ; 
 int FUNC4 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_cp_read_local_amp_assoc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  read_local_amp_assoc_complete ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct hci_dev *hdev, struct amp_mgr *mgr)
{
	struct hci_cp_read_local_amp_assoc cp;
	struct hci_request req;
	int err;

	FUNC5(&hdev->loc_assoc, 0, sizeof(struct amp_assoc));
	FUNC5(&cp, 0, sizeof(cp));

	cp.max_len = FUNC1(hdev->amp_assoc_size);

	FUNC6(READ_LOC_AMP_ASSOC, &mgr->state);
	FUNC3(&req, hdev);
	FUNC2(&req, HCI_OP_READ_LOCAL_AMP_ASSOC, sizeof(cp), &cp);
	err = FUNC4(&req, read_local_amp_assoc_complete);
	if (err < 0)
		FUNC0(hdev, A2MP_STATUS_INVALID_CTRL_ID);
}