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
struct hci_dev {scalar_t__ amp_type; } ;
struct amp_mgr {int dummy; } ;
struct a2mp_cmd {int /*<<< orphan*/  ident; int /*<<< orphan*/  len; } ;
struct a2mp_amp_assoc_rsp {int /*<<< orphan*/  status; int /*<<< orphan*/  id; } ;
struct a2mp_amp_assoc_req {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  rsp ;

/* Variables and functions */
 int /*<<< orphan*/  A2MP_GETAMPASSOC_RSP ; 
 int /*<<< orphan*/  A2MP_STATUS_COLLISION_OCCURED ; 
 int /*<<< orphan*/  A2MP_STATUS_INVALID_CTRL_ID ; 
 scalar_t__ AMP_TYPE_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  READ_LOC_AMP_ASSOC ; 
 int /*<<< orphan*/  FUNC1 (struct amp_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct a2mp_amp_assoc_rsp*) ; 
 struct amp_mgr* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amp_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct amp_mgr*) ; 
 struct hci_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct amp_mgr *mgr, struct sk_buff *skb,
				struct a2mp_cmd *hdr)
{
	struct a2mp_amp_assoc_req *req = (void *) skb->data;
	struct hci_dev *hdev;
	struct amp_mgr *tmp;

	if (FUNC7(hdr->len) < sizeof(*req))
		return -EINVAL;

	FUNC0("id %d", req->id);

	/* Make sure that other request is not processed */
	tmp = FUNC2(READ_LOC_AMP_ASSOC);

	hdev = FUNC5(req->id);
	if (!hdev || hdev->amp_type == AMP_TYPE_BREDR || tmp) {
		struct a2mp_amp_assoc_rsp rsp;
		rsp.id = req->id;

		if (tmp) {
			rsp.status = A2MP_STATUS_COLLISION_OCCURED;
			FUNC3(tmp);
		} else {
			rsp.status = A2MP_STATUS_INVALID_CTRL_ID;
		}

		FUNC1(mgr, A2MP_GETAMPASSOC_RSP, hdr->ident, sizeof(rsp),
			  &rsp);

		goto done;
	}

	FUNC4(hdev, mgr);

done:
	if (hdev)
		FUNC6(hdev);

	FUNC8(skb, sizeof(*req));
	return 0;
}