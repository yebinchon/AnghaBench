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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {scalar_t__ curr_nfc_dep_pni; int /*<<< orphan*/  (* skb_add_crc ) (struct sk_buff*) ;} ;
struct digital_psl_res {scalar_t__ did; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_PSL_RES ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_FRAME_DIR_IN ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int FUNC2 (struct nfc_digital_dev*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  digital_tg_send_psl_res_complete ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct nfc_digital_dev *ddev, u8 did,
				   u8 rf_tech)
{
	struct digital_psl_res *psl_res;
	struct sk_buff *skb;
	int rc;

	skb = FUNC0(ddev, sizeof(struct digital_psl_res));
	if (!skb)
		return -ENOMEM;

	FUNC4(skb, sizeof(struct digital_psl_res));

	psl_res = (struct digital_psl_res *)skb->data;

	psl_res->dir = DIGITAL_NFC_DEP_FRAME_DIR_IN;
	psl_res->cmd = DIGITAL_CMD_PSL_RES;
	psl_res->did = did;

	FUNC1(ddev, skb);

	ddev->skb_add_crc(skb);

	ddev->curr_nfc_dep_pni = 0;

	rc = FUNC2(ddev, skb, 0, digital_tg_send_psl_res_complete,
				 (void *)(unsigned long)rf_tech);
	if (rc)
		FUNC3(skb);

	return rc;
}