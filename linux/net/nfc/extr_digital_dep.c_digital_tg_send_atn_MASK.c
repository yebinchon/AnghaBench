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
struct nfc_digital_dev {int /*<<< orphan*/  (* skb_add_crc ) (struct sk_buff*) ;int /*<<< orphan*/  did; } ;
struct digital_dep_req_res {int /*<<< orphan*/  pfb; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_DEP_RES ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_FRAME_DIR_IN ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_PFB_DID_BIT ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  digital_tg_recv_dep_req ; 
 int FUNC2 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct nfc_digital_dev *ddev)
{
	struct digital_dep_req_res *dep_res;
	struct sk_buff *skb;
	int rc;

	skb = FUNC0(ddev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC4(skb, sizeof(struct digital_dep_req_res));

	dep_res = (struct digital_dep_req_res *)skb->data;

	dep_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
	dep_res->cmd = DIGITAL_CMD_DEP_RES;
	dep_res->pfb = DIGITAL_NFC_DEP_PFB_SUPERVISOR_PDU;

	if (ddev->did) {
		dep_res->pfb |= DIGITAL_NFC_DEP_PFB_DID_BIT;

		FUNC5(skb, &ddev->did, sizeof(ddev->did));
	}

	FUNC1(ddev, skb);

	ddev->skb_add_crc(skb);

	rc = FUNC2(ddev, skb, 1500, digital_tg_recv_dep_req,
				 NULL);
	if (rc)
		FUNC3(skb);

	return rc;
}