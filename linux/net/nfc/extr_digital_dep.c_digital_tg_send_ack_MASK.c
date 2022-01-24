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
struct nfc_digital_dev {int curr_nfc_dep_pni; struct sk_buff* saved_skb; int /*<<< orphan*/  (* skb_add_crc ) (struct sk_buff*) ;int /*<<< orphan*/  did; } ;
struct digital_dep_req_res {int pfb; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dir; } ;
struct digital_data_exch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_DEP_RES ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_FRAME_DIR_IN ; 
 int DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU ; 
 int DIGITAL_NFC_DEP_PFB_DID_BIT ; 
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC1 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  digital_tg_recv_dep_req ; 
 int FUNC3 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,struct digital_data_exch*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct nfc_digital_dev *ddev,
			       struct digital_data_exch *data_exch)
{
	struct digital_dep_req_res *dep_res;
	struct sk_buff *skb;
	int rc;

	skb = FUNC1(ddev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC6(skb, sizeof(struct digital_dep_req_res));

	dep_res = (struct digital_dep_req_res *)skb->data;

	dep_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
	dep_res->cmd = DIGITAL_CMD_DEP_RES;
	dep_res->pfb = DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU |
		       ddev->curr_nfc_dep_pni;

	if (ddev->did) {
		dep_res->pfb |= DIGITAL_NFC_DEP_PFB_DID_BIT;

		FUNC7(skb, &ddev->did, sizeof(ddev->did));
	}

	ddev->curr_nfc_dep_pni =
		FUNC0(ddev->curr_nfc_dep_pni + 1);

	FUNC2(ddev, skb);

	ddev->skb_add_crc(skb);

	ddev->saved_skb = FUNC5(skb, GFP_KERNEL);

	rc = FUNC3(ddev, skb, 1500, digital_tg_recv_dep_req,
				 data_exch);
	if (rc) {
		FUNC4(skb);
		FUNC4(ddev->saved_skb);
		ddev->saved_skb = NULL;
	}

	return rc;
}