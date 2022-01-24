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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct sk_buff {int len; int* data; } ;
struct nfc_llcp_local {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LLCP_AGF_PDU_HEADER_SIZE ; 
 int LLCP_HEADER_SIZE ; 
 scalar_t__ LLCP_PDU_AGF ; 
 scalar_t__ LLCP_PDU_SYMM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_llcp_local*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int*,int) ; 

__attribute__((used)) static void FUNC7(struct nfc_llcp_local *local, struct sk_buff *skb)
{
	u8 ptype;
	u16 pdu_len;
	struct sk_buff *new_skb;

	if (skb->len <= LLCP_HEADER_SIZE) {
		FUNC4("Malformed AGF PDU\n");
		return;
	}

	FUNC5(skb, LLCP_HEADER_SIZE);

	while (skb->len > LLCP_AGF_PDU_HEADER_SIZE) {
		pdu_len = skb->data[0] << 8 | skb->data[1];

		FUNC5(skb, LLCP_AGF_PDU_HEADER_SIZE);

		if (pdu_len < LLCP_HEADER_SIZE || pdu_len > skb->len) {
			FUNC4("Malformed AGF PDU\n");
			return;
		}

		ptype = FUNC2(skb);

		if (ptype == LLCP_PDU_SYMM || ptype == LLCP_PDU_AGF)
			goto next;

		new_skb = FUNC1(pdu_len, GFP_KERNEL);
		if (new_skb == NULL) {
			FUNC4("Could not allocate PDU\n");
			return;
		}

		FUNC6(new_skb, skb->data, pdu_len);

		FUNC3(local, new_skb);

		FUNC0(new_skb);
next:
		FUNC5(skb, pdu_len);
	}
}