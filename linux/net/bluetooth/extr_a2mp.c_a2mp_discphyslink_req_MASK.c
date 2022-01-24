#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int dummy; } ;
struct amp_mgr {TYPE_2__* l2cap_conn; } ;
struct a2mp_physlink_rsp {int /*<<< orphan*/  status; int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;
struct a2mp_physlink_req {int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;
struct a2mp_cmd {int /*<<< orphan*/  ident; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  rsp ;
struct TYPE_4__ {TYPE_1__* hcon; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_DISCONNPHYSLINK_RSP ; 
 int /*<<< orphan*/  A2MP_STATUS_INVALID_CTRL_ID ; 
 int /*<<< orphan*/  A2MP_STATUS_NO_PHYSICAL_LINK_EXISTS ; 
 int /*<<< orphan*/  A2MP_STATUS_SUCCESS ; 
 int /*<<< orphan*/  AMP_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct a2mp_physlink_rsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,char*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC8(struct amp_mgr *mgr, struct sk_buff *skb,
				 struct a2mp_cmd *hdr)
{
	struct a2mp_physlink_req *req = (void *) skb->data;
	struct a2mp_physlink_rsp rsp;
	struct hci_dev *hdev;
	struct hci_conn *hcon;

	if (FUNC6(hdr->len) < sizeof(*req))
		return -EINVAL;

	FUNC0("local_id %d remote_id %d", req->local_id, req->remote_id);

	rsp.local_id = req->remote_id;
	rsp.remote_id = req->local_id;
	rsp.status = A2MP_STATUS_SUCCESS;

	hdev = FUNC4(req->remote_id);
	if (!hdev) {
		rsp.status = A2MP_STATUS_INVALID_CTRL_ID;
		goto send_rsp;
	}

	hcon = FUNC3(hdev, AMP_LINK,
				       &mgr->l2cap_conn->hcon->dst);
	if (!hcon) {
		FUNC2(hdev, "no phys link exist");
		rsp.status = A2MP_STATUS_NO_PHYSICAL_LINK_EXISTS;
		goto clean;
	}

	/* TODO Disconnect Phys Link here */

clean:
	FUNC5(hdev);

send_rsp:
	FUNC1(mgr, A2MP_DISCONNPHYSLINK_RSP, hdr->ident, sizeof(rsp), &rsp);

	FUNC7(skb, sizeof(*req));
	return 0;
}