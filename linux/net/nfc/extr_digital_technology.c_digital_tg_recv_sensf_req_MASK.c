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
struct nfc_digital_dev {int dummy; } ;
struct digital_sensf_req {scalar_t__ cmd; } ;

/* Variables and functions */
 scalar_t__ DIGITAL_CMD_SENSF_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct nfc_digital_dev*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_digital_dev*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct nfc_digital_dev*,struct digital_sensf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

void FUNC9(struct nfc_digital_dev *ddev, void *arg,
			       struct sk_buff *resp)
{
	struct digital_sensf_req *sensf_req;
	int rc;

	if (FUNC1(resp)) {
		rc = FUNC3(resp);
		resp = NULL;
		goto exit;
	}

	if (!FUNC0(ddev)) {
		rc = FUNC6(resp);
		if (rc) {
			FUNC2("6.4.1.8");
			goto exit;
		}
	}

	if (resp->len != sizeof(struct digital_sensf_req) + 1) {
		rc = -EINVAL;
		goto exit;
	}

	FUNC8(resp, 1);
	sensf_req = (struct digital_sensf_req *)resp->data;

	if (sensf_req->cmd != DIGITAL_CMD_SENSF_REQ) {
		rc = -EINVAL;
		goto exit;
	}

	rc = FUNC7(ddev, sensf_req);

exit:
	if (rc)
		FUNC5(ddev);

	FUNC4(resp);
}