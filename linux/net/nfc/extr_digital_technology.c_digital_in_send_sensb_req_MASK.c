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
struct digital_sensb_req {int afi; int /*<<< orphan*/  param; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_SENSB_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_RF_TECH ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFCB ; 
 int /*<<< orphan*/  NFC_DIGITAL_RF_TECH_106B ; 
 int FUNC1 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  digital_in_recv_sensb_res ; 
 int FUNC2 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct digital_sensb_req* FUNC5 (struct sk_buff*,int) ; 

int FUNC6(struct nfc_digital_dev *ddev, u8 rf_tech)
{
	struct digital_sensb_req *sensb_req;
	struct sk_buff *skb;
	int rc;

	rc = FUNC1(ddev, NFC_DIGITAL_CONFIG_RF_TECH,
				     NFC_DIGITAL_RF_TECH_106B);
	if (rc)
		return rc;

	rc = FUNC1(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFCB);
	if (rc)
		return rc;

	skb = FUNC3(ddev, sizeof(*sensb_req));
	if (!skb)
		return -ENOMEM;

	sensb_req = FUNC5(skb, sizeof(*sensb_req));

	sensb_req->cmd = DIGITAL_CMD_SENSB_REQ;
	sensb_req->afi = 0x00; /* All families and sub-families */
	sensb_req->param = FUNC0(0);

	rc = FUNC2(ddev, skb, 30, digital_in_recv_sensb_res,
				 NULL);
	if (rc)
		FUNC4(skb);

	return rc;
}