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
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int /*<<< orphan*/  target_fsc; } ;
struct digital_sensb_res {scalar_t__ cmd; int* proto_info; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DIGITAL_ATS_MAX_FSC ; 
 scalar_t__ DIGITAL_CMD_SENSB_RES ; 
 int FUNC1 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/ * digital_ats_fsc ; 
 int FUNC6 (struct nfc_digital_dev*,struct nfc_target*,struct digital_sensb_res*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfc_target*) ; 
 struct nfc_target* FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct nfc_digital_dev *ddev, void *arg,
				      struct sk_buff *resp)
{
	struct nfc_target *target = NULL;
	struct digital_sensb_res *sensb_res;
	u8 fsci;
	int rc;

	if (FUNC2(resp)) {
		rc = FUNC4(resp);
		resp = NULL;
		goto exit;
	}

	if (resp->len != sizeof(*sensb_res)) {
		FUNC3("5.6.2.1");
		rc = -EIO;
		goto exit;
	}

	sensb_res = (struct digital_sensb_res *)resp->data;

	if (sensb_res->cmd != DIGITAL_CMD_SENSB_RES) {
		FUNC3("5.6.2");
		rc = -EIO;
		goto exit;
	}

	if (!(sensb_res->proto_info[1] & FUNC0(0))) {
		FUNC3("5.6.2.12");
		rc = -EIO;
		goto exit;
	}

	if (sensb_res->proto_info[1] & FUNC0(3)) {
		FUNC3("5.6.2.16");
		rc = -EIO;
		goto exit;
	}

	fsci = FUNC1(sensb_res->proto_info[1]);
	if (fsci >= 8)
		ddev->target_fsc = DIGITAL_ATS_MAX_FSC;
	else
		ddev->target_fsc = digital_ats_fsc[fsci];

	target = FUNC9(sizeof(struct nfc_target), GFP_KERNEL);
	if (!target) {
		rc = -ENOMEM;
		goto exit;
	}

	rc = FUNC6(ddev, target, sensb_res);

exit:
	FUNC5(resp);

	if (rc) {
		FUNC8(target);
		FUNC7(ddev);
	}
}