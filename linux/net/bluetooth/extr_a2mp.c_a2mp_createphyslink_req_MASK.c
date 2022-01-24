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
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {scalar_t__ amp_type; } ;
struct hci_conn {int dummy; } ;
struct amp_mgr {int /*<<< orphan*/  ident; int /*<<< orphan*/  state; } ;
struct amp_ctrl {size_t assoc_len; size_t assoc_rem_len; scalar_t__ assoc_len_so_far; int /*<<< orphan*/ * assoc; } ;
struct a2mp_physlink_rsp {scalar_t__ status; int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;
struct a2mp_physlink_req {int /*<<< orphan*/  local_id; int /*<<< orphan*/  amp_assoc; int /*<<< orphan*/  remote_id; } ;
struct a2mp_cmd {int /*<<< orphan*/  len; int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_CREATEPHYSLINK_RSP ; 
 scalar_t__ A2MP_STATUS_INVALID_CTRL_ID ; 
 scalar_t__ A2MP_STATUS_SUCCESS ; 
 void* A2MP_STATUS_UNABLE_START_LINK_CREATION ; 
 scalar_t__ AMP_TYPE_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WRITE_REMOTE_AMP_ASSOC ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct a2mp_physlink_rsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,struct amp_mgr*,struct hci_conn*) ; 
 struct amp_ctrl* FUNC3 (struct amp_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amp_ctrl*) ; 
 struct amp_ctrl* FUNC5 (struct amp_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amp_ctrl*) ; 
 struct hci_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC11 (struct hci_dev*,struct amp_mgr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC14(struct amp_mgr *mgr, struct sk_buff *skb,
				   struct a2mp_cmd *hdr)
{
	struct a2mp_physlink_req *req = (void *) skb->data;

	struct a2mp_physlink_rsp rsp;
	struct hci_dev *hdev;
	struct hci_conn *hcon;
	struct amp_ctrl *ctrl;

	if (FUNC10(hdr->len) < sizeof(*req))
		return -EINVAL;

	FUNC0("local_id %d, remote_id %d", req->local_id, req->remote_id);

	rsp.local_id = req->remote_id;
	rsp.remote_id = req->local_id;

	hdev = FUNC7(req->remote_id);
	if (!hdev || hdev->amp_type == AMP_TYPE_BREDR) {
		rsp.status = A2MP_STATUS_INVALID_CTRL_ID;
		goto send_rsp;
	}

	ctrl = FUNC5(mgr, rsp.remote_id);
	if (!ctrl) {
		ctrl = FUNC3(mgr, rsp.remote_id);
		if (ctrl) {
			FUNC4(ctrl);
		} else {
			rsp.status = A2MP_STATUS_UNABLE_START_LINK_CREATION;
			goto send_rsp;
		}
	}

	if (ctrl) {
		size_t assoc_len = FUNC10(hdr->len) - sizeof(*req);
		u8 *assoc;

		assoc = FUNC9(req->amp_assoc, assoc_len, GFP_KERNEL);
		if (!assoc) {
			FUNC6(ctrl);
			return -ENOMEM;
		}

		ctrl->assoc = assoc;
		ctrl->assoc_len = assoc_len;
		ctrl->assoc_rem_len = assoc_len;
		ctrl->assoc_len_so_far = 0;

		FUNC6(ctrl);
	}

	hcon = FUNC11(hdev, mgr, req->local_id, false);
	if (hcon) {
		FUNC2(hdev, mgr, hcon);
		rsp.status = A2MP_STATUS_SUCCESS;
	} else {
		rsp.status = A2MP_STATUS_UNABLE_START_LINK_CREATION;
	}

send_rsp:
	if (hdev)
		FUNC8(hdev);

	/* Reply error now and success after HCI Write Remote AMP Assoc
	   command complete with success status
	 */
	if (rsp.status != A2MP_STATUS_SUCCESS) {
		FUNC1(mgr, A2MP_CREATEPHYSLINK_RSP, hdr->ident,
			  sizeof(rsp), &rsp);
	} else {
		FUNC12(WRITE_REMOTE_AMP_ASSOC, &mgr->state);
		mgr->ident = hdr->ident;
	}

	FUNC13(skb, FUNC10(hdr->len));
	return 0;
}