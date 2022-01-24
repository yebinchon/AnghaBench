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
struct sk_buff {int len; scalar_t__ data; } ;
struct nfc_target {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_attrib_res {int mbli_did; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_PROTO_ISO14443_B ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_digital_dev*) ; 
 int FUNC5 (struct nfc_digital_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_target*) ; 

__attribute__((used)) static void FUNC7(struct nfc_digital_dev *ddev, void *arg,
				       struct sk_buff *resp)
{
	struct nfc_target *target = arg;
	struct digital_attrib_res *attrib_res;
	int rc;

	if (FUNC0(resp)) {
		rc = FUNC2(resp);
		resp = NULL;
		goto exit;
	}

	if (resp->len < sizeof(*attrib_res)) {
		FUNC1("12.6.2");
		rc = -EIO;
		goto exit;
	}

	attrib_res = (struct digital_attrib_res *)resp->data;

	if (attrib_res->mbli_did & 0x0f) {
		FUNC1("12.6.2.1");
		rc = -EIO;
		goto exit;
	}

	rc = FUNC5(ddev, target, NFC_PROTO_ISO14443_B);

exit:
	FUNC3(resp);
	FUNC6(target);

	if (rc)
		FUNC4(ddev);
}