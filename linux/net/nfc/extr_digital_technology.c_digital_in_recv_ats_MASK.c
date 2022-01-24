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
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {scalar_t__ curr_nfc_dep_pni; int /*<<< orphan*/  target_fsc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIGITAL_ATS_MAX_FSC ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_PROTO_ISO14443 ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/ * digital_ats_fsc ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_digital_dev*) ; 
 int FUNC5 (struct nfc_digital_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_target*) ; 

__attribute__((used)) static void FUNC7(struct nfc_digital_dev *ddev, void *arg,
				struct sk_buff *resp)
{
	struct nfc_target *target = arg;
	u8 fsdi;
	int rc;

	if (FUNC1(resp)) {
		rc = FUNC2(resp);
		resp = NULL;
		goto exit;
	}

	if (resp->len < 2) {
		rc = -EIO;
		goto exit;
	}

	fsdi = FUNC0(resp->data[1]);
	if (fsdi >= 8)
		ddev->target_fsc = DIGITAL_ATS_MAX_FSC;
	else
		ddev->target_fsc = digital_ats_fsc[fsdi];

	ddev->curr_nfc_dep_pni = 0;

	rc = FUNC5(ddev, target, NFC_PROTO_ISO14443);

exit:
	FUNC3(resp);
	FUNC6(target);

	if (rc)
		FUNC4(ddev);
}