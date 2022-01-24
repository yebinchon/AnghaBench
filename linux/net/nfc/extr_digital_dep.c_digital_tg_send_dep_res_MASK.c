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
struct nfc_digital_dev {struct sk_buff* saved_skb; struct sk_buff* chaining_skb; int /*<<< orphan*/  (* skb_add_crc ) (struct sk_buff*) ;scalar_t__ curr_nfc_dep_pni; scalar_t__ did; } ;
struct digital_dep_req_res {scalar_t__ pfb; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_DEP_RES ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_FRAME_DIR_IN ; 
 scalar_t__ DIGITAL_NFC_DEP_PFB_DID_BIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct nfc_digital_dev*,struct sk_buff*,struct digital_dep_req_res*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  digital_tg_recv_dep_req ; 
 int FUNC5 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

int FUNC11(struct nfc_digital_dev *ddev, struct sk_buff *skb)
{
	struct digital_dep_req_res *dep_res;
	struct sk_buff *chaining_skb, *tmp_skb;
	int rc;

	FUNC8(skb, sizeof(struct digital_dep_req_res));

	dep_res = (struct digital_dep_req_res *)skb->data;

	dep_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
	dep_res->cmd = DIGITAL_CMD_DEP_RES;
	dep_res->pfb = ddev->curr_nfc_dep_pni;

	if (ddev->did) {
		dep_res->pfb |= DIGITAL_NFC_DEP_PFB_DID_BIT;

		FUNC9(skb, &ddev->did, sizeof(ddev->did));
	}

	ddev->curr_nfc_dep_pni =
		FUNC0(ddev->curr_nfc_dep_pni + 1);

	chaining_skb = ddev->chaining_skb;

	tmp_skb = FUNC3(ddev, skb, dep_res, NULL);
	if (FUNC1(tmp_skb))
		return FUNC2(tmp_skb);

	FUNC4(ddev, tmp_skb);

	ddev->skb_add_crc(tmp_skb);

	ddev->saved_skb = FUNC7(tmp_skb, GFP_KERNEL);

	rc = FUNC5(ddev, tmp_skb, 1500, digital_tg_recv_dep_req,
				 NULL);
	if (rc) {
		if (tmp_skb != skb)
			FUNC6(tmp_skb);

		FUNC6(chaining_skb);
		ddev->chaining_skb = NULL;

		FUNC6(ddev->saved_skb);
		ddev->saved_skb = NULL;
	}

	return rc;
}