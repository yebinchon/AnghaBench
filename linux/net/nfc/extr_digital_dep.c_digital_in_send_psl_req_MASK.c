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
typedef  void* u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int /*<<< orphan*/  dep_rwt; int /*<<< orphan*/  (* skb_add_crc ) (struct sk_buff*) ;void* remote_payload_max; void* local_payload_max; } ;
struct digital_psl_req {int brs; int /*<<< orphan*/  fsl; scalar_t__ did; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_PSL_REQ ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_FRAME_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  digital_in_recv_psl_res ; 
 int FUNC1 (struct nfc_digital_dev*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfc_target*) ; 
 void* FUNC2 (void*) ; 
 struct sk_buff* FUNC3 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 void* FUNC6 (void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct nfc_digital_dev *ddev,
				   struct nfc_target *target)
{
	struct sk_buff *skb;
	struct digital_psl_req *psl_req;
	int rc;
	u8 payload_size, payload_bits;

	skb = FUNC3(ddev, sizeof(*psl_req));
	if (!skb)
		return -ENOMEM;

	FUNC7(skb, sizeof(*psl_req));

	psl_req = (struct digital_psl_req *)skb->data;

	psl_req->dir = DIGITAL_NFC_DEP_FRAME_DIR_OUT;
	psl_req->cmd = DIGITAL_CMD_PSL_REQ;
	psl_req->did = 0;
	psl_req->brs = (0x2 << 3) | 0x2; /* 424F both directions */

	payload_size = FUNC6(ddev->local_payload_max, ddev->remote_payload_max);
	payload_bits = FUNC2(payload_size);
	psl_req->fsl = FUNC0(payload_bits);

	ddev->local_payload_max = payload_size;
	ddev->remote_payload_max = payload_size;

	FUNC4(ddev, skb);

	ddev->skb_add_crc(skb);

	rc = FUNC1(ddev, skb, ddev->dep_rwt,
				 digital_in_recv_psl_res, target);
	if (rc)
		FUNC5(skb);

	return rc;
}