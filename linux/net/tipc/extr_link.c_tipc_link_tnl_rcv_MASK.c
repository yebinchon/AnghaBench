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
typedef  int /*<<< orphan*/  u16 ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct tipc_link {int /*<<< orphan*/  drop_point; struct sk_buff_head failover_deferdq; struct sk_buff* reasm_tnlmsg; struct sk_buff* failover_reasm_skb; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_FRAGMENT ; 
 int /*<<< orphan*/  FRAGMENT ; 
 int /*<<< orphan*/  LAST_FRAGMENT ; 
 int /*<<< orphan*/  LINK_FAILURE_EVT ; 
 scalar_t__ SYNCH_MSG ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct tipc_link*) ; 
 int FUNC8 (struct tipc_msg*) ; 
 int FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff**,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_link*,struct sk_buff*,struct sk_buff_head*) ; 
 int FUNC16 (struct tipc_link*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct tipc_link*,struct sk_buff*,struct sk_buff_head*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,struct sk_buff**,int*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct tipc_link *l, struct sk_buff *skb,
			     struct sk_buff_head *inputq)
{
	struct sk_buff **reasm_skb = &l->failover_reasm_skb;
	struct sk_buff **reasm_tnlmsg = &l->reasm_tnlmsg;
	struct sk_buff_head *fdefq = &l->failover_deferdq;
	struct tipc_msg *hdr = FUNC2(skb);
	struct sk_buff *iskb;
	int ipos = 0;
	int rc = 0;
	u16 seqno;

	if (FUNC11(hdr) == SYNCH_MSG) {
		FUNC4(skb);
		return 0;
	}

	/* Not a fragment? */
	if (FUNC6(!FUNC9(hdr))) {
		if (FUNC19(!FUNC18(skb, &iskb, &ipos))) {
			FUNC12("Unable to extract msg, defq: %d\n",
					    FUNC13(fdefq));
			return 0;
		}
		FUNC4(skb);
	} else {
		/* Set fragment type for buf_append */
		if (FUNC8(hdr) == 1)
			FUNC10(hdr, FIRST_FRAGMENT);
		else if (FUNC8(hdr) < FUNC9(hdr))
			FUNC10(hdr, FRAGMENT);
		else
			FUNC10(hdr, LAST_FRAGMENT);

		if (!FUNC14(reasm_tnlmsg, &skb)) {
			/* Successful but non-complete reassembly? */
			if (*reasm_tnlmsg || FUNC7(l))
				return 0;
			FUNC12("Unable to reassemble tunnel msg\n");
			return FUNC16(l, LINK_FAILURE_EVT);
		}
		iskb = skb;
	}

	do {
		seqno = FUNC3(iskb);
		if (FUNC19(FUNC5(seqno, l->drop_point))) {
			FUNC4(iskb);
			continue;
		}
		if (FUNC19(seqno != l->drop_point)) {
			FUNC1(fdefq, seqno, iskb);
			continue;
		}

		l->drop_point++;
		if (!FUNC15(l, iskb, inputq))
			rc |= FUNC17(l, iskb, inputq, reasm_skb);
		if (FUNC19(rc))
			break;
	} while ((iskb = FUNC0(fdefq, l->drop_point)));

	return rc;
}