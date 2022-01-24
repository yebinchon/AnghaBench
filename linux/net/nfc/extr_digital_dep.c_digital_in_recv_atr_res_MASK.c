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
typedef  size_t u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int /*<<< orphan*/  idx; } ;
struct nfc_digital_dev {int (* skb_check_crc ) (struct sk_buff*) ;int protocols; scalar_t__ curr_rf_tech; scalar_t__ curr_protocol; scalar_t__ curr_nfc_dep_pni; int /*<<< orphan*/  nfc_dev; int /*<<< orphan*/  remote_payload_max; int /*<<< orphan*/  dep_rwt; } ;
struct digital_atr_res {int /*<<< orphan*/  gb; int /*<<< orphan*/  pp; int /*<<< orphan*/  to; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DIGITAL_NFC_DEP_IN_MAX_WT ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_COMM_ACTIVE ; 
 scalar_t__ NFC_DIGITAL_RF_TECH_424F ; 
 int NFC_PROTO_FELICA_MASK ; 
 int /*<<< orphan*/  NFC_RF_INITIATOR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct nfc_digital_dev*,struct nfc_target*) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/ * digital_rwt_map ; 
 int FUNC8 (struct nfc_digital_dev*,struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct nfc_digital_dev *ddev, void *arg,
				 struct sk_buff *resp)
{
	struct nfc_target *target = arg;
	struct digital_atr_res *atr_res;
	u8 gb_len, payload_bits;
	u8 wt;
	int rc;

	if (FUNC2(resp)) {
		rc = FUNC4(resp);
		resp = NULL;
		goto exit;
	}

	rc = ddev->skb_check_crc(resp);
	if (rc) {
		FUNC3("14.4.1.6");
		goto exit;
	}

	rc = FUNC8(ddev, resp);
	if (rc) {
		FUNC3("14.4.1.2");
		goto exit;
	}

	if (resp->len < sizeof(struct digital_atr_res)) {
		rc = -EIO;
		goto exit;
	}

	gb_len = resp->len - sizeof(struct digital_atr_res);

	atr_res = (struct digital_atr_res *)resp->data;

	wt = FUNC0(atr_res->to);
	if (wt > DIGITAL_NFC_DEP_IN_MAX_WT)
		wt = DIGITAL_NFC_DEP_IN_MAX_WT;
	ddev->dep_rwt = digital_rwt_map[wt];

	payload_bits = FUNC1(atr_res->pp);
	ddev->remote_payload_max = FUNC7(payload_bits);

	if (!ddev->remote_payload_max) {
		rc = -EINVAL;
		goto exit;
	}

	rc = FUNC10(ddev->nfc_dev, atr_res->gb, gb_len);
	if (rc)
		goto exit;

	if ((ddev->protocols & NFC_PROTO_FELICA_MASK) &&
	    (ddev->curr_rf_tech != NFC_DIGITAL_RF_TECH_424F)) {
		rc = FUNC6(ddev, target);
		if (!rc)
			goto exit;
	}

	rc = FUNC9(ddev->nfc_dev, target->idx, NFC_COMM_ACTIVE,
				NFC_RF_INITIATOR);

	ddev->curr_nfc_dep_pni = 0;

exit:
	FUNC5(resp);

	if (rc)
		ddev->curr_protocol = 0;
}