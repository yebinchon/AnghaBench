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
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  remote_id; } ;
struct amp_mgr {int /*<<< orphan*/  ident; } ;
struct a2mp_physlink_rsp {int /*<<< orphan*/  local_id; int /*<<< orphan*/  status; int /*<<< orphan*/  remote_id; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_CREATEPHYSLINK_RSP ; 
 int /*<<< orphan*/  A2MP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  A2MP_STATUS_UNABLE_START_LINK_CREATION ; 
 int /*<<< orphan*/  AMP_LINK ; 
 int /*<<< orphan*/  BT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct amp_mgr*,struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_REMOTE_AMP_ASSOC ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct a2mp_physlink_rsp*) ; 
 struct amp_mgr* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amp_mgr*) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct hci_dev *hdev, u8 status)
{
	struct amp_mgr *mgr;
	struct a2mp_physlink_rsp rsp;
	struct hci_conn *hs_hcon;

	mgr = FUNC2(WRITE_REMOTE_AMP_ASSOC);
	if (!mgr)
		return;

	hs_hcon = FUNC4(hdev, AMP_LINK, BT_CONNECT);
	if (!hs_hcon) {
		rsp.status = A2MP_STATUS_UNABLE_START_LINK_CREATION;
	} else {
		rsp.remote_id = hs_hcon->remote_id;
		rsp.status = A2MP_STATUS_SUCCESS;
	}

	FUNC0("%s mgr %p hs_hcon %p status %u", hdev->name, mgr, hs_hcon,
	       status);

	rsp.local_id = hdev->id;
	FUNC1(mgr, A2MP_CREATEPHYSLINK_RSP, mgr->ident, sizeof(rsp), &rsp);
	FUNC3(mgr);
}