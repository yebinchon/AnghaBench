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
typedef  scalar_t__ u8 ;
struct sk_buff {int len; scalar_t__* data; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_SEL_REQ_CL1 ; 
 scalar_t__ DIGITAL_SDD_REQ_SEL_PAR ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_digital_dev*) ; 
 int FUNC4 (struct nfc_digital_dev*) ; 

__attribute__((used)) static void FUNC5(struct nfc_digital_dev *ddev, void *arg,
				    struct sk_buff *resp)
{
	u8 *sdd_req;
	int rc;

	if (FUNC0(resp)) {
		rc = FUNC1(resp);
		resp = NULL;
		goto exit;
	}

	sdd_req = resp->data;

	if (resp->len < 2 || sdd_req[0] != DIGITAL_CMD_SEL_REQ_CL1 ||
	    sdd_req[1] != DIGITAL_SDD_REQ_SEL_PAR) {
		rc = -EINVAL;
		goto exit;
	}

	rc = FUNC4(ddev);

exit:
	if (rc)
		FUNC3(ddev);

	FUNC2(resp);
}