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
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfc_digital_dev*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_digital_dev*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct nfc_digital_dev*) ; 

__attribute__((used)) static void FUNC8(struct nfc_digital_dev *ddev, void *arg,
				    struct sk_buff *resp)
{
	int rc;

	if (FUNC1(resp)) {
		rc = FUNC3(resp);
		resp = NULL;
		goto exit;
	}

	if (!FUNC0(ddev)) {
		rc = FUNC6(resp);
		if (rc) {
			FUNC2("4.4.1.3");
			goto exit;
		}
	}

	/* Silently ignore SEL_REQ content and send a SEL_RES for NFC-DEP */

	rc = FUNC7(ddev);

exit:
	if (rc)
		FUNC5(ddev);

	FUNC4(resp);
}