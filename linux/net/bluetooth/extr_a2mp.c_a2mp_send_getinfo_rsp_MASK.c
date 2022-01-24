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
struct hci_dev {scalar_t__ amp_type; int /*<<< orphan*/  amp_assoc_size; int /*<<< orphan*/  amp_pal_cap; int /*<<< orphan*/  amp_min_latency; int /*<<< orphan*/  amp_max_bw; int /*<<< orphan*/  amp_total_bw; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct amp_mgr {int /*<<< orphan*/  ident; } ;
struct a2mp_info_rsp {void* assoc_size; void* pal_cap; void* min_latency; void* max_bw; void* total_bw; scalar_t__ status; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_GETINFO_RSP ; 
 scalar_t__ A2MP_STATUS_INVALID_CTRL_ID ; 
 scalar_t__ AMP_TYPE_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct amp_mgr*) ; 
 int /*<<< orphan*/  READ_LOC_AMP_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct a2mp_info_rsp*) ; 
 struct amp_mgr* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amp_mgr*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct hci_dev *hdev)
{
	struct amp_mgr *mgr;
	struct a2mp_info_rsp rsp;

	mgr = FUNC2(READ_LOC_AMP_INFO);
	if (!mgr)
		return;

	FUNC0("%s mgr %p", hdev->name, mgr);

	rsp.id = hdev->id;
	rsp.status = A2MP_STATUS_INVALID_CTRL_ID;

	if (hdev->amp_type != AMP_TYPE_BREDR) {
		rsp.status = 0;
		rsp.total_bw = FUNC5(hdev->amp_total_bw);
		rsp.max_bw = FUNC5(hdev->amp_max_bw);
		rsp.min_latency = FUNC5(hdev->amp_min_latency);
		rsp.pal_cap = FUNC4(hdev->amp_pal_cap);
		rsp.assoc_size = FUNC4(hdev->amp_assoc_size);
	}

	FUNC1(mgr, A2MP_GETINFO_RSP, mgr->ident, sizeof(rsp), &rsp);
	FUNC3(mgr);
}