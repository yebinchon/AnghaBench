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
struct nfc_digital_dev {int curr_nfc_dep_pni; int /*<<< orphan*/  dep_rwt; int /*<<< orphan*/  (* skb_add_crc ) (struct sk_buff*) ;} ;
struct digital_dep_req_res {int pfb; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dir; } ;
struct digital_data_exch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_DEP_REQ ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_FRAME_DIR_OUT ; 
 int DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU ; 
 int DIGITAL_NFC_DEP_PFB_NACK_BIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  digital_in_recv_dep_res ; 
 int FUNC0 (struct nfc_digital_dev*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct digital_data_exch*) ; 
 struct sk_buff* FUNC1 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct nfc_digital_dev *ddev,
				struct digital_data_exch *data_exch)
{
	struct digital_dep_req_res *dep_req;
	struct sk_buff *skb;
	int rc;

	skb = FUNC1(ddev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC4(skb, sizeof(struct digital_dep_req_res));

	dep_req = (struct digital_dep_req_res *)skb->data;

	dep_req->dir = DIGITAL_NFC_DEP_FRAME_DIR_OUT;
	dep_req->cmd = DIGITAL_CMD_DEP_REQ;
	dep_req->pfb = DIGITAL_NFC_DEP_PFB_ACK_NACK_PDU |
		       DIGITAL_NFC_DEP_PFB_NACK_BIT | ddev->curr_nfc_dep_pni;

	FUNC2(ddev, skb);

	ddev->skb_add_crc(skb);

	rc = FUNC0(ddev, skb, ddev->dep_rwt,
				 digital_in_recv_dep_res, data_exch);
	if (rc)
		FUNC3(skb);

	return rc;
}