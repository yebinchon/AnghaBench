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
struct sk_buff {scalar_t__* data; int /*<<< orphan*/  len; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_ALL_REQ ; 
 scalar_t__ DIGITAL_CMD_SENS_REQ ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_digital_dev*) ; 
 int FUNC4 (struct nfc_digital_dev*) ; 

void FUNC5(struct nfc_digital_dev *ddev, void *arg,
			      struct sk_buff *resp)
{
	u8 sens_req;
	int rc;

	if (FUNC0(resp)) {
		rc = FUNC1(resp);
		resp = NULL;
		goto exit;
	}

	sens_req = resp->data[0];

	if (!resp->len || (sens_req != DIGITAL_CMD_SENS_REQ &&
	    sens_req != DIGITAL_CMD_ALL_REQ)) {
		rc = -EINVAL;
		goto exit;
	}

	rc = FUNC4(ddev);

exit:
	if (rc)
		FUNC3(ddev);

	FUNC2(resp);
}