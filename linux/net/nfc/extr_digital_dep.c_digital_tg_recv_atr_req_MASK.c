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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {size_t len; scalar_t__* data; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;scalar_t__ did; int /*<<< orphan*/  poll_tech_count; int /*<<< orphan*/  nfc_dev; int /*<<< orphan*/  remote_payload_max; int /*<<< orphan*/  curr_protocol; } ;
struct digital_atr_req {scalar_t__ dir; scalar_t__ cmd; scalar_t__ did; int /*<<< orphan*/  gb; int /*<<< orphan*/  pp; } ;

/* Variables and functions */
 int DIGITAL_ATR_REQ_MIN_SIZE ; 
 scalar_t__ DIGITAL_CMD_ATR_REQ ; 
 scalar_t__ DIGITAL_DID_MAX ; 
 scalar_t__ DIGITAL_NFC_DEP_FRAME_DIR_OUT ; 
 scalar_t__ DIGITAL_NFC_DEP_NFCA_SOD_SB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_COMM_PASSIVE ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFC_DEP_ACTIVATED ; 
 int /*<<< orphan*/  NFC_DIGITAL_RF_TECH_106A ; 
 int /*<<< orphan*/  NFC_DIGITAL_RF_TECH_212F ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_digital_dev*) ; 
 int FUNC7 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int FUNC8 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nfc_digital_dev*,struct digital_atr_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfc_digital_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC12 (struct sk_buff*) ; 

void FUNC13(struct nfc_digital_dev *ddev, void *arg,
			     struct sk_buff *resp)
{
	int rc;
	struct digital_atr_req *atr_req;
	size_t gb_len, min_size;
	u8 poll_tech_count, payload_bits;

	if (FUNC1(resp)) {
		rc = FUNC3(resp);
		resp = NULL;
		goto exit;
	}

	if (!resp->len) {
		rc = -EIO;
		goto exit;
	}

	if (resp->data[0] == DIGITAL_NFC_DEP_NFCA_SOD_SB) {
		min_size = DIGITAL_ATR_REQ_MIN_SIZE + 2;
		FUNC10(ddev, NFC_DIGITAL_RF_TECH_106A);
	} else {
		min_size = DIGITAL_ATR_REQ_MIN_SIZE + 1;
		FUNC10(ddev, NFC_DIGITAL_RF_TECH_212F);
	}

	if (resp->len < min_size) {
		rc = -EIO;
		goto exit;
	}

	ddev->curr_protocol = NFC_PROTO_NFC_DEP_MASK;

	rc = ddev->skb_check_crc(resp);
	if (rc) {
		FUNC2("14.4.1.6");
		goto exit;
	}

	rc = FUNC7(ddev, resp);
	if (rc) {
		FUNC2("14.4.1.2");
		goto exit;
	}

	atr_req = (struct digital_atr_req *)resp->data;

	if (atr_req->dir != DIGITAL_NFC_DEP_FRAME_DIR_OUT ||
	    atr_req->cmd != DIGITAL_CMD_ATR_REQ ||
	    atr_req->did > DIGITAL_DID_MAX) {
		rc = -EINVAL;
		goto exit;
	}

	payload_bits = FUNC0(atr_req->pp);
	ddev->remote_payload_max = FUNC5(payload_bits);

	if (!ddev->remote_payload_max) {
		rc = -EINVAL;
		goto exit;
	}

	ddev->did = atr_req->did;

	rc = FUNC8(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFC_DEP_ACTIVATED);
	if (rc)
		goto exit;

	rc = FUNC9(ddev, atr_req);
	if (rc)
		goto exit;

	gb_len = resp->len - sizeof(struct digital_atr_req);

	poll_tech_count = ddev->poll_tech_count;
	ddev->poll_tech_count = 0;

	rc = FUNC11(ddev->nfc_dev, NFC_PROTO_NFC_DEP_MASK,
			      NFC_COMM_PASSIVE, atr_req->gb, gb_len);
	if (rc) {
		ddev->poll_tech_count = poll_tech_count;
		goto exit;
	}

	rc = 0;
exit:
	if (rc)
		FUNC6(ddev);

	FUNC4(resp);
}