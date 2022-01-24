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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct nfc_target {int /*<<< orphan*/  sel_res; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_digital_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ DIGITAL_SEL_RES_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_PROTO_MIFARE ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct nfc_digital_dev*,struct nfc_target*) ; 
 int FUNC10 (struct nfc_digital_dev*,struct nfc_target*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfc_digital_dev*) ; 
 int FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct nfc_digital_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfc_target*) ; 

__attribute__((used)) static void FUNC15(struct nfc_digital_dev *ddev, void *arg,
				    struct sk_buff *resp)
{
	struct nfc_target *target = arg;
	int rc;
	u8 sel_res;
	u8 nfc_proto;

	if (FUNC5(resp)) {
		rc = FUNC7(resp);
		resp = NULL;
		goto exit;
	}

	if (!FUNC0(ddev)) {
		rc = FUNC12(resp);
		if (rc) {
			FUNC6("4.4.1.3");
			goto exit;
		}
	}

	if (resp->len != DIGITAL_SEL_RES_LEN) {
		rc = -EIO;
		goto exit;
	}

	sel_res = resp->data[0];

	if (!FUNC4(sel_res)) {
		rc = FUNC10(ddev, target);
		if (rc)
			goto exit;

		goto exit_free_skb;
	}

	target->sel_res = sel_res;

	if (FUNC2(sel_res)) {
		nfc_proto = NFC_PROTO_MIFARE;
	} else if (FUNC1(sel_res)) {
		nfc_proto = NFC_PROTO_NFC_DEP;
	} else if (FUNC3(sel_res)) {
		rc = FUNC9(ddev, target);
		if (rc)
			goto exit;
		/*
		 * Skip target_found and don't free it for now. This will be
		 * done when receiving the ATS
		 */
		goto exit_free_skb;
	} else {
		rc = -EOPNOTSUPP;
		goto exit;
	}

	rc = FUNC13(ddev, target, nfc_proto);

exit:
	FUNC14(target);

exit_free_skb:
	FUNC8(resp);

	if (rc)
		FUNC11(ddev);
}