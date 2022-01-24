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
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_target {int /*<<< orphan*/  nfcid2; scalar_t__ nfcid2_len; } ;
struct nfc_digital_dev {int /*<<< orphan*/  (* skb_add_crc ) (struct sk_buff*) ;int /*<<< orphan*/  local_payload_max; } ;
struct digital_atr_req {int /*<<< orphan*/  pp; scalar_t__ br; scalar_t__ bs; scalar_t__ did; int /*<<< orphan*/  nfcid3; int /*<<< orphan*/  cmd; int /*<<< orphan*/  dir; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ DIGITAL_ATR_REQ_MAX_SIZE ; 
 scalar_t__ DIGITAL_ATR_REQ_MIN_SIZE ; 
 int /*<<< orphan*/  DIGITAL_ATR_RES_RWT ; 
 int /*<<< orphan*/  DIGITAL_CMD_ATR_REQ ; 
 int /*<<< orphan*/  DIGITAL_GB_BIT ; 
 int /*<<< orphan*/  DIGITAL_NFC_DEP_FRAME_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIGITAL_PAYLOAD_SIZE_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFC_NFCID2_MAXSIZE ; 
 int /*<<< orphan*/  NFC_NFCID3_MAXSIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  digital_in_recv_atr_res ; 
 int FUNC2 (struct nfc_digital_dev*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfc_target*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct nfc_digital_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct digital_atr_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

int FUNC13(struct nfc_digital_dev *ddev,
			    struct nfc_target *target, __u8 comm_mode, __u8 *gb,
			    size_t gb_len)
{
	struct sk_buff *skb;
	struct digital_atr_req *atr_req;
	uint size;
	int rc;
	u8 payload_bits;

	size = DIGITAL_ATR_REQ_MIN_SIZE + gb_len;

	if (size > DIGITAL_ATR_REQ_MAX_SIZE) {
		FUNC1("14.6.1.1");
		return -EINVAL;
	}

	skb = FUNC4(ddev, size);
	if (!skb)
		return -ENOMEM;

	FUNC10(skb, sizeof(struct digital_atr_req));

	atr_req = (struct digital_atr_req *)skb->data;
	FUNC9(atr_req, 0, sizeof(struct digital_atr_req));

	atr_req->dir = DIGITAL_NFC_DEP_FRAME_DIR_OUT;
	atr_req->cmd = DIGITAL_CMD_ATR_REQ;
	if (target->nfcid2_len)
		FUNC8(atr_req->nfcid3, target->nfcid2, NFC_NFCID2_MAXSIZE);
	else
		FUNC6(atr_req->nfcid3, NFC_NFCID3_MAXSIZE);

	atr_req->did = 0;
	atr_req->bs = 0;
	atr_req->br = 0;

	ddev->local_payload_max = DIGITAL_PAYLOAD_SIZE_MAX;
	payload_bits = FUNC3(ddev->local_payload_max);
	atr_req->pp = FUNC0(payload_bits);

	if (gb_len) {
		atr_req->pp |= DIGITAL_GB_BIT;
		FUNC11(skb, gb, gb_len);
	}

	FUNC5(ddev, skb);

	ddev->skb_add_crc(skb);

	rc = FUNC2(ddev, skb, DIGITAL_ATR_RES_RWT,
				 digital_in_recv_atr_res, target);
	if (rc)
		FUNC7(skb);

	return rc;
}