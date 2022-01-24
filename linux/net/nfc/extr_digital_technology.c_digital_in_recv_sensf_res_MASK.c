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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct nfc_target {scalar_t__* sensf_res; scalar_t__ sensf_res_len; scalar_t__* nfcid2; scalar_t__ nfcid2_len; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sensf_res {struct digital_sensf_res* nfcid2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_digital_dev*) ; 
 scalar_t__ DIGITAL_SENSF_NFCID2_NFC_DEP_B1 ; 
 scalar_t__ DIGITAL_SENSF_NFCID2_NFC_DEP_B2 ; 
 scalar_t__ DIGITAL_SENSF_RES_MIN_LENGTH ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ NFC_NFCID2_MAXSIZE ; 
 int /*<<< orphan*/  NFC_PROTO_FELICA ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_digital_dev*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct nfc_digital_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,struct digital_sensf_res*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct nfc_target*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC11(struct nfc_digital_dev *ddev, void *arg,
				   struct sk_buff *resp)
{
	int rc;
	u8 proto;
	struct nfc_target target;
	struct digital_sensf_res *sensf_res;

	if (FUNC1(resp)) {
		rc = FUNC3(resp);
		resp = NULL;
		goto exit;
	}

	if (resp->len < DIGITAL_SENSF_RES_MIN_LENGTH) {
		rc = -EIO;
		goto exit;
	}

	if (!FUNC0(ddev)) {
		rc = FUNC6(resp);
		if (rc) {
			FUNC2("6.4.1.8");
			goto exit;
		}
	}

	FUNC10(resp, 1);

	FUNC9(&target, 0, sizeof(struct nfc_target));

	sensf_res = (struct digital_sensf_res *)resp->data;

	FUNC8(target.sensf_res, sensf_res, resp->len);
	target.sensf_res_len = resp->len;

	FUNC8(target.nfcid2, sensf_res->nfcid2, NFC_NFCID2_MAXSIZE);
	target.nfcid2_len = NFC_NFCID2_MAXSIZE;

	if (target.nfcid2[0] == DIGITAL_SENSF_NFCID2_NFC_DEP_B1 &&
	    target.nfcid2[1] == DIGITAL_SENSF_NFCID2_NFC_DEP_B2)
		proto = NFC_PROTO_NFC_DEP;
	else
		proto = NFC_PROTO_FELICA;

	rc = FUNC7(ddev, &target, proto);

exit:
	FUNC4(resp);

	if (rc)
		FUNC5(ddev);
}