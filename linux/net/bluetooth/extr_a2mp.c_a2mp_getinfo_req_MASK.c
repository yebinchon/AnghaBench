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
struct sk_buff {scalar_t__ data; } ;
struct hci_request {int dummy; } ;
struct hci_dev {scalar_t__ dev_type; } ;
struct amp_mgr {int /*<<< orphan*/  state; } ;
struct a2mp_info_rsp {int /*<<< orphan*/  status; int /*<<< orphan*/  id; } ;
struct a2mp_info_req {int /*<<< orphan*/  id; } ;
struct a2mp_cmd {int /*<<< orphan*/  ident; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_GETINFO_RSP ; 
 int /*<<< orphan*/  A2MP_STATUS_INVALID_CTRL_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ HCI_AMP ; 
 int /*<<< orphan*/  HCI_OP_READ_LOCAL_AMP_INFO ; 
 int /*<<< orphan*/  READ_LOC_AMP_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct a2mp_info_rsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct hci_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_request*,struct hci_dev*) ; 
 int FUNC7 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_local_amp_info_complete ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC11(struct amp_mgr *mgr, struct sk_buff *skb,
			    struct a2mp_cmd *hdr)
{
	struct a2mp_info_req *req  = (void *) skb->data;
	struct hci_dev *hdev;
	struct hci_request hreq;
	int err = 0;

	if (FUNC8(hdr->len) < sizeof(*req))
		return -EINVAL;

	FUNC0("id %d", req->id);

	hdev = FUNC3(req->id);
	if (!hdev || hdev->dev_type != HCI_AMP) {
		struct a2mp_info_rsp rsp;

		rsp.id = req->id;
		rsp.status = A2MP_STATUS_INVALID_CTRL_ID;

		FUNC1(mgr, A2MP_GETINFO_RSP, hdr->ident, sizeof(rsp),
			  &rsp);

		goto done;
	}

	FUNC9(READ_LOC_AMP_INFO, &mgr->state);
	FUNC6(&hreq, hdev);
	FUNC5(&hreq, HCI_OP_READ_LOCAL_AMP_INFO, 0, NULL);
	err = FUNC7(&hreq, read_local_amp_info_complete);
	if (err < 0)
		FUNC2(hdev);

done:
	if (hdev)
		FUNC4(hdev);

	FUNC10(skb, sizeof(*req));
	return 0;
}