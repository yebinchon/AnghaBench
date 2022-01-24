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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct nfc_target {scalar_t__ nfcid1_len; scalar_t__ nfcid1; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sdd_res {int* nfcid1; int bcc; } ;

/* Variables and functions */
 int DIGITAL_SDD_RES_CT ; 
 scalar_t__ DIGITAL_SDD_RES_LEN ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct nfc_digital_dev*,struct nfc_target*,struct digital_sdd_res*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_digital_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_target*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int*,int) ; 

__attribute__((used)) static void FUNC8(struct nfc_digital_dev *ddev, void *arg,
				    struct sk_buff *resp)
{
	struct nfc_target *target = arg;
	struct digital_sdd_res *sdd_res;
	int rc;
	u8 offset, size;
	u8 i, bcc;

	if (FUNC0(resp)) {
		rc = FUNC2(resp);
		resp = NULL;
		goto exit;
	}

	if (resp->len < DIGITAL_SDD_RES_LEN) {
		FUNC1("4.7.2.8");
		rc = -EINVAL;
		goto exit;
	}

	sdd_res = (struct digital_sdd_res *)resp->data;

	for (i = 0, bcc = 0; i < 4; i++)
		bcc ^= sdd_res->nfcid1[i];

	if (bcc != sdd_res->bcc) {
		FUNC1("4.7.2.6");
		rc = -EINVAL;
		goto exit;
	}

	if (sdd_res->nfcid1[0] == DIGITAL_SDD_RES_CT) {
		offset = 1;
		size = 3;
	} else {
		offset = 0;
		size = 4;
	}

	FUNC7(target->nfcid1 + target->nfcid1_len, sdd_res->nfcid1 + offset,
	       size);
	target->nfcid1_len += size;

	rc = FUNC4(ddev, target, sdd_res);

exit:
	FUNC3(resp);

	if (rc) {
		FUNC6(target);
		FUNC5(ddev);
	}
}