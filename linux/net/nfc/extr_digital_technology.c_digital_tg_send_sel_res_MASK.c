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
 int /*<<< orphan*/  DIGITAL_SEL_RES_NFC_DEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFCA_ANTICOL_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct nfc_digital_dev*,int) ; 
 int FUNC3 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  digital_tg_recv_atr_req ; 
 int FUNC4 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nfc_digital_dev *ddev)
{
	struct sk_buff *skb;
	int rc;

	skb = FUNC2(ddev, 1);
	if (!skb)
		return -ENOMEM;

	FUNC6(skb, DIGITAL_SEL_RES_NFC_DEP);

	if (!FUNC0(ddev))
		FUNC1(skb);

	rc = FUNC3(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFCA_ANTICOL_COMPLETE);
	if (rc) {
		FUNC5(skb);
		return rc;
	}

	rc = FUNC4(ddev, skb, 300, digital_tg_recv_atr_req,
				 NULL);
	if (rc)
		FUNC5(skb);

	return rc;
}