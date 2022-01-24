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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_SENS_REQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_RF_TECH ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFCA_SHORT ; 
 int /*<<< orphan*/  NFC_DIGITAL_RF_TECH_106A ; 
 int FUNC0 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  digital_in_recv_sens_res ; 
 int FUNC1 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC5(struct nfc_digital_dev *ddev, u8 rf_tech)
{
	struct sk_buff *skb;
	int rc;

	rc = FUNC0(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
				     NFC_DIGITAL_RF_TECH_106A);
	if (rc)
		return rc;

	rc = FUNC0(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFCA_SHORT);
	if (rc)
		return rc;

	skb = FUNC2(ddev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC4(skb, DIGITAL_CMD_SENS_REQ);

	rc = FUNC1(ddev, skb, 30, digital_in_recv_sens_res, NULL);
	if (rc)
		FUNC3(skb);

	return rc;
}