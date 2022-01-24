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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int /*<<< orphan*/  sens_res; } ;
struct nfc_digital_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_PROTO_JEWEL ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct nfc_digital_dev*,struct nfc_target*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfc_digital_dev*) ; 
 int FUNC9 (struct nfc_digital_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfc_target*) ; 
 struct nfc_target* FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct nfc_digital_dev *ddev, void *arg,
				     struct sk_buff *resp)
{
	struct nfc_target *target = NULL;
	int rc;

	if (FUNC2(resp)) {
		rc = FUNC4(resp);
		resp = NULL;
		goto exit;
	}

	if (resp->len < sizeof(u16)) {
		rc = -EIO;
		goto exit;
	}

	target = FUNC11(sizeof(struct nfc_target), GFP_KERNEL);
	if (!target) {
		rc = -ENOMEM;
		goto exit;
	}

	target->sens_res = FUNC5(*(__le16 *)resp->data);

	if (!FUNC1(target->sens_res)) {
		FUNC3("4.6.3.3");
		rc = -EINVAL;
		goto exit;
	}

	if (FUNC0(target->sens_res))
		rc = FUNC9(ddev, target, NFC_PROTO_JEWEL);
	else
		rc = FUNC7(ddev, target);

exit:
	FUNC6(resp);

	if (rc) {
		FUNC10(target);
		FUNC8(ddev);
	}
}