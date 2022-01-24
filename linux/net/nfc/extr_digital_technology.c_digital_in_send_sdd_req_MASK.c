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
struct nfc_target {int nfcid1_len; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_CMD_SEL_REQ_CL1 ; 
 int /*<<< orphan*/  DIGITAL_CMD_SEL_REQ_CL2 ; 
 int /*<<< orphan*/  DIGITAL_CMD_SEL_REQ_CL3 ; 
 int /*<<< orphan*/  DIGITAL_SDD_REQ_SEL_PAR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFC_DIGITAL_CONFIG_FRAMING ; 
 int /*<<< orphan*/  NFC_DIGITAL_FRAMING_NFCA_STANDARD ; 
 int FUNC0 (struct nfc_digital_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  digital_in_recv_sdd_res ; 
 int FUNC1 (struct nfc_digital_dev*,struct sk_buff*,int,int /*<<< orphan*/ ,struct nfc_target*) ; 
 struct sk_buff* FUNC2 (struct nfc_digital_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nfc_digital_dev *ddev,
				   struct nfc_target *target)
{
	int rc;
	struct sk_buff *skb;
	u8 sel_cmd;

	rc = FUNC0(ddev, NFC_DIGITAL_CONFIG_FRAMING,
				     NFC_DIGITAL_FRAMING_NFCA_STANDARD);
	if (rc)
		return rc;

	skb = FUNC2(ddev, 2);
	if (!skb)
		return -ENOMEM;

	if (target->nfcid1_len == 0)
		sel_cmd = DIGITAL_CMD_SEL_REQ_CL1;
	else if (target->nfcid1_len == 3)
		sel_cmd = DIGITAL_CMD_SEL_REQ_CL2;
	else
		sel_cmd = DIGITAL_CMD_SEL_REQ_CL3;

	FUNC3(skb, sel_cmd);
	FUNC3(skb, DIGITAL_SDD_REQ_SEL_PAR);

	return FUNC1(ddev, skb, 30, digital_in_recv_sdd_res,
				   target);
}