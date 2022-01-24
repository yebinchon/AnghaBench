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
typedef  int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;int local_payload_max; int remote_payload_max; } ;
struct digital_psl_req {scalar_t__ dir; scalar_t__ cmd; int brs; int /*<<< orphan*/  did; int /*<<< orphan*/  fsl; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_PSL_REQ ; 
 scalar_t__ DIGITAL_NFC_DEP_FRAME_DIR_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int NFC_DIGITAL_RF_TECH_106A ; 
 int NFC_DIGITAL_RF_TECH_212F ; 
 int NFC_DIGITAL_RF_TECH_424F ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int FUNC6 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC11(struct nfc_digital_dev *ddev, void *arg,
				    struct sk_buff *resp)
{
	int rc;
	struct digital_psl_req *psl_req;
	u8 rf_tech;
	u8 dsi, payload_size, payload_bits;

	if (FUNC1(resp)) {
		rc = FUNC3(resp);
		resp = NULL;
		goto exit;
	}

	rc = ddev->skb_check_crc(resp);
	if (rc) {
		FUNC2("14.4.1.6");
		goto exit;
	}

	rc = FUNC5(ddev, resp);
	if (rc) {
		FUNC2("14.4.1.2");
		goto exit;
	}

	psl_req = (struct digital_psl_req *)resp->data;

	if (resp->len != sizeof(struct digital_psl_req) ||
	    psl_req->dir != DIGITAL_NFC_DEP_FRAME_DIR_OUT ||
	    psl_req->cmd != DIGITAL_CMD_PSL_REQ) {
		rc = -EIO;
		goto exit;
	}

	dsi = (psl_req->brs >> 3) & 0x07;
	switch (dsi) {
	case 0:
		rf_tech = NFC_DIGITAL_RF_TECH_106A;
		break;
	case 1:
		rf_tech = NFC_DIGITAL_RF_TECH_212F;
		break;
	case 2:
		rf_tech = NFC_DIGITAL_RF_TECH_424F;
		break;
	default:
		FUNC9("Unsupported dsi value %d\n", dsi);
		goto exit;
	}

	payload_bits = FUNC0(psl_req->fsl);
	payload_size = FUNC4(payload_bits);

	if (!payload_size || (payload_size > FUNC8(ddev->local_payload_max,
						 ddev->remote_payload_max))) {
		rc = -EINVAL;
		goto exit;
	}

	ddev->local_payload_max = payload_size;
	ddev->remote_payload_max = payload_size;

	rc = FUNC6(ddev, psl_req->did, rf_tech);

exit:
	FUNC7(resp);
}