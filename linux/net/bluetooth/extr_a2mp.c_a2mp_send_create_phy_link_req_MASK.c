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
struct l2cap_chan {int /*<<< orphan*/  remote_amp_id; } ;
struct amp_assoc {int len; int /*<<< orphan*/  data; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; struct amp_assoc loc_assoc; } ;
struct amp_mgr {struct l2cap_chan* bredr_chan; } ;
struct a2mp_physlink_req {int /*<<< orphan*/  amp_assoc; int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_CREATEPHYSLINK_REQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct amp_mgr*,size_t) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  READ_LOC_AMP_ASSOC_FINAL ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct a2mp_physlink_req*) ; 
 struct amp_mgr* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct a2mp_physlink_req*) ; 
 struct a2mp_physlink_req* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct hci_dev *hdev, u8 status)
{
	struct amp_mgr *mgr;
	struct amp_assoc *loc_assoc = &hdev->loc_assoc;
	struct a2mp_physlink_req *req;
	struct l2cap_chan *bredr_chan;
	size_t len;

	mgr = FUNC3(READ_LOC_AMP_ASSOC_FINAL);
	if (!mgr)
		return;

	len = sizeof(*req) + loc_assoc->len;

	FUNC0("%s mgr %p assoc_len %zu", hdev->name, mgr, len);

	req = FUNC6(len, GFP_KERNEL);
	if (!req) {
		FUNC4(mgr);
		return;
	}

	bredr_chan = mgr->bredr_chan;
	if (!bredr_chan)
		goto clean;

	req->local_id = hdev->id;
	req->remote_id = bredr_chan->remote_amp_id;
	FUNC7(req->amp_assoc, loc_assoc->data, loc_assoc->len);

	FUNC2(mgr, A2MP_CREATEPHYSLINK_REQ, FUNC1(mgr), len, req);

clean:
	FUNC4(mgr);
	FUNC5(req);
}