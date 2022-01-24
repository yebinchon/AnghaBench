#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tg_get_rf_tech ) (struct nfc_digital_dev*,int*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
#define  NFC_DIGITAL_RF_TECH_106A 130 
#define  NFC_DIGITAL_RF_TECH_212F 129 
#define  NFC_DIGITAL_RF_TECH_424F 128 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_digital_dev*) ; 
 int FUNC3 (struct nfc_digital_dev*) ; 
 int FUNC4 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_digital_dev*,void*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_digital_dev*,void*,struct sk_buff*) ; 
 int FUNC7 (struct nfc_digital_dev*,int*) ; 

void FUNC8(struct nfc_digital_dev *ddev, void *arg,
			    struct sk_buff *resp)
{
	u8 rf_tech;
	int rc;

	if (FUNC0(resp)) {
		resp = NULL;
		goto exit_free_skb;
	}

	rc = ddev->ops->tg_get_rf_tech(ddev, &rf_tech);
	if (rc)
		goto exit_free_skb;

	switch (rf_tech) {
	case NFC_DIGITAL_RF_TECH_106A:
		rc = FUNC3(ddev);
		if (rc)
			goto exit_free_skb;
		FUNC5(ddev, arg, resp);
		break;
	case NFC_DIGITAL_RF_TECH_212F:
	case NFC_DIGITAL_RF_TECH_424F:
		rc = FUNC4(ddev, rf_tech);
		if (rc)
			goto exit_free_skb;
		FUNC6(ddev, arg, resp);
		break;
	default:
		goto exit_free_skb;
	}

	return;

exit_free_skb:
	FUNC2(ddev);
	FUNC1(resp);
}