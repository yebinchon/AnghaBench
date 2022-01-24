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
struct nfc_target {int is_iso15693; int /*<<< orphan*/  iso15693_uid; int /*<<< orphan*/  iso15693_dsfid; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_iso15693_inv_res {int /*<<< orphan*/  uid; int /*<<< orphan*/  dsfid; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFC_PROTO_ISO15693 ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_digital_dev*) ; 
 int FUNC6 (struct nfc_digital_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfc_target*) ; 
 struct nfc_target* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC10(struct nfc_digital_dev *ddev,
		void *arg, struct sk_buff *resp)
{
	struct digital_iso15693_inv_res *res;
	struct nfc_target *target = NULL;
	int rc;

	if (FUNC1(resp)) {
		rc = FUNC3(resp);
		resp = NULL;
		goto out_free_skb;
	}

	if (resp->len != sizeof(*res)) {
		rc = -EIO;
		goto out_free_skb;
	}

	res = (struct digital_iso15693_inv_res *)resp->data;

	if (!FUNC0(res->flags)) {
		FUNC2("ISO15693 - 10.3.1");
		rc = -EINVAL;
		goto out_free_skb;
	}

	target = FUNC8(sizeof(*target), GFP_KERNEL);
	if (!target) {
		rc = -ENOMEM;
		goto out_free_skb;
	}

	target->is_iso15693 = 1;
	target->iso15693_dsfid = res->dsfid;
	FUNC9(target->iso15693_uid, &res->uid, sizeof(target->iso15693_uid));

	rc = FUNC6(ddev, target, NFC_PROTO_ISO15693);

	FUNC7(target);

out_free_skb:
	FUNC4(resp);

	if (rc)
		FUNC5(ddev);
}