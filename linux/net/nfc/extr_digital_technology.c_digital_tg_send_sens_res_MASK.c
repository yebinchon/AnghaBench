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
struct sk_buff {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int DIGITAL_SENS_RES_NFC_DEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFCA_STANDARD ; 
 struct sk_buff* FUNC0 (struct nfc_digital_dev*,int) ; 
 int FUNC1 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  digital_tg_recv_sdd_req ; 
 int FUNC2 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int* FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC5(struct nfc_digital_dev *ddev)
{
	struct sk_buff *skb;
	u8 *sens_res;
	int rc;

	skb = FUNC0(ddev, 2);
	if (!skb)
		return -ENOMEM;

	sens_res = FUNC4(skb, 2);

	sens_res[0] = (DIGITAL_SENS_RES_NFC_DEP >> 8) & 0xFF;
	sens_res[1] = DIGITAL_SENS_RES_NFC_DEP & 0xFF;

	rc = FUNC1(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFCA_STANDARD);
	if (rc) {
		FUNC3(skb);
		return rc;
	}

	rc = FUNC2(ddev, skb, 300, digital_tg_recv_sdd_req,
				 NULL);
	if (rc)
		FUNC3(skb);

	return rc;
}