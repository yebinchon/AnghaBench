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
struct sk_buff {scalar_t__ data; } ;
struct nfc_digital_dev {int dummy; } ;
struct digital_sensf_req {int sc1; int sc2; scalar_t__ tsn; int /*<<< orphan*/  rc; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_SENSF_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct nfc_digital_dev*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_RF_TECH ; 
 int NFC_DIGITAL_FRAMING_NFCF ; 
 int FUNC1 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  digital_in_recv_sensf_res ; 
 int FUNC2 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

int FUNC8(struct nfc_digital_dev *ddev, u8 rf_tech)
{
	struct digital_sensf_req *sensf_req;
	struct sk_buff *skb;
	int rc;
	u8 size;

	rc = FUNC1(ddev, NFC_DIGITAL_CONFIG_RF_TECH, rf_tech);
	if (rc)
		return rc;

	rc = FUNC1(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFCF);
	if (rc)
		return rc;

	size = sizeof(struct digital_sensf_req);

	skb = FUNC4(ddev, size);
	if (!skb)
		return -ENOMEM;

	FUNC7(skb, size);

	sensf_req = (struct digital_sensf_req *)skb->data;
	sensf_req->cmd = DIGITAL_CMD_SENSF_REQ;
	sensf_req->sc1 = 0xFF;
	sensf_req->sc2 = 0xFF;
	sensf_req->rc = 0;
	sensf_req->tsn = 0;

	*(u8 *)FUNC6(skb, 1) = size + 1;

	if (!FUNC0(ddev))
		FUNC3(skb);

	rc = FUNC2(ddev, skb, 30, digital_in_recv_sensf_res,
				 NULL);
	if (rc)
		FUNC5(skb);

	return rc;
}