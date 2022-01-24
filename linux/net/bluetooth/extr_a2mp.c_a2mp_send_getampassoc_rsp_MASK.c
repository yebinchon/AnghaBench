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
typedef  scalar_t__ u8 ;
struct amp_assoc {int len; int /*<<< orphan*/  data; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; struct amp_assoc loc_assoc; } ;
struct amp_mgr {int /*<<< orphan*/  ident; } ;
struct a2mp_amp_assoc_rsp {int /*<<< orphan*/  amp_assoc; int /*<<< orphan*/  status; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_GETAMPASSOC_RSP ; 
 int /*<<< orphan*/  A2MP_STATUS_INVALID_CTRL_ID ; 
 int /*<<< orphan*/  A2MP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct amp_mgr*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  READ_LOC_AMP_ASSOC ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct a2mp_amp_assoc_rsp*) ; 
 struct amp_mgr* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct a2mp_amp_assoc_rsp*) ; 
 struct a2mp_amp_assoc_rsp* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct hci_dev *hdev, u8 status)
{
	struct amp_mgr *mgr;
	struct amp_assoc *loc_assoc = &hdev->loc_assoc;
	struct a2mp_amp_assoc_rsp *rsp;
	size_t len;

	mgr = FUNC2(READ_LOC_AMP_ASSOC);
	if (!mgr)
		return;

	FUNC0("%s mgr %p", hdev->name, mgr);

	len = sizeof(struct a2mp_amp_assoc_rsp) + loc_assoc->len;
	rsp = FUNC5(len, GFP_KERNEL);
	if (!rsp) {
		FUNC3(mgr);
		return;
	}

	rsp->id = hdev->id;

	if (status) {
		rsp->status = A2MP_STATUS_INVALID_CTRL_ID;
	} else {
		rsp->status = A2MP_STATUS_SUCCESS;
		FUNC6(rsp->amp_assoc, loc_assoc->data, loc_assoc->len);
	}

	FUNC1(mgr, A2MP_GETAMPASSOC_RSP, mgr->ident, len, rsp);
	FUNC3(mgr);
	FUNC4(rsp);
}