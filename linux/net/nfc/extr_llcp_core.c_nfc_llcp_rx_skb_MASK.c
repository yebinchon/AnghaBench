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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfc_llcp_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
#define  LLCP_PDU_AGF 138 
#define  LLCP_PDU_CC 137 
#define  LLCP_PDU_CONNECT 136 
#define  LLCP_PDU_DISC 135 
#define  LLCP_PDU_DM 134 
#define  LLCP_PDU_I 133 
#define  LLCP_PDU_RNR 132 
#define  LLCP_PDU_RR 131 
#define  LLCP_PDU_SNL 130 
#define  LLCP_PDU_SYMM 129 
#define  LLCP_PDU_UI 128 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct nfc_llcp_local *local, struct sk_buff *skb)
{
	u8 dsap, ssap, ptype;

	ptype = FUNC1(skb);
	dsap = FUNC0(skb);
	ssap = FUNC10(skb);

	FUNC11("ptype 0x%x dsap 0x%x ssap 0x%x\n", ptype, dsap, ssap);

	if (ptype != LLCP_PDU_SYMM)
		FUNC12("LLCP Rx: ", DUMP_PREFIX_OFFSET, 16, 1,
				     skb->data, skb->len, true);

	switch (ptype) {
	case LLCP_PDU_SYMM:
		FUNC11("SYMM\n");
		break;

	case LLCP_PDU_UI:
		FUNC11("UI\n");
		FUNC9(local, skb);
		break;

	case LLCP_PDU_CONNECT:
		FUNC11("CONNECT\n");
		FUNC4(local, skb);
		break;

	case LLCP_PDU_DISC:
		FUNC11("DISC\n");
		FUNC5(local, skb);
		break;

	case LLCP_PDU_CC:
		FUNC11("CC\n");
		FUNC3(local, skb);
		break;

	case LLCP_PDU_DM:
		FUNC11("DM\n");
		FUNC6(local, skb);
		break;

	case LLCP_PDU_SNL:
		FUNC11("SNL\n");
		FUNC8(local, skb);
		break;

	case LLCP_PDU_I:
	case LLCP_PDU_RR:
	case LLCP_PDU_RNR:
		FUNC11("I frame\n");
		FUNC7(local, skb);
		break;

	case LLCP_PDU_AGF:
		FUNC11("AGF frame\n");
		FUNC2(local, skb);
		break;
	}
}