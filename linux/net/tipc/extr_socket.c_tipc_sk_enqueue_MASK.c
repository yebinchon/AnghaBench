#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct sock {int /*<<< orphan*/  sk_drops; TYPE_1__ sk_backlog; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_4__ {int /*<<< orphan*/  dupl_rcvcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 int /*<<< orphan*/  TIPC_ERR_OVERLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int jiffies ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned int FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC7 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 (int,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sk_buff**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*,struct sk_buff_head*) ; 
 struct sk_buff* FUNC15 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(struct sk_buff_head *inputq, struct sock *sk,
			    u32 dport, struct sk_buff_head *xmitq)
{
	unsigned long time_limit = jiffies + 2;
	struct sk_buff *skb;
	unsigned int lim;
	atomic_t *dcnt;
	u32 onode;

	while (FUNC7(inputq)) {
		if (FUNC19(FUNC10(jiffies, time_limit)))
			return;

		skb = FUNC15(inputq, dport);
		if (FUNC19(!skb))
			return;

		/* Add message directly to receive queue if possible */
		if (!FUNC9(sk)) {
			FUNC14(sk, skb, xmitq);
			continue;
		}

		/* Try backlog, compensating for double-counted bytes */
		dcnt = &FUNC13(sk)->dupl_rcvcnt;
		if (!sk->sk_backlog.len)
			FUNC3(dcnt, 0);
		lim = FUNC5(sk, skb) + FUNC2(dcnt);
		if (FUNC4(!FUNC6(sk, skb, lim))) {
			FUNC17(sk, skb, TIPC_DUMP_ALL,
						 "bklg & rcvq >90% allocated!");
			continue;
		}

		FUNC16(sk, skb, TIPC_DUMP_ALL, "err_overload!");
		/* Overload => reject message back to sender */
		onode = FUNC12(FUNC8(sk));
		FUNC1(&sk->sk_drops);
		if (FUNC11(onode, &skb, TIPC_ERR_OVERLOAD)) {
			FUNC18(sk, skb, TIPC_DUMP_ALL,
					      "@sk_enqueue!");
			FUNC0(xmitq, skb);
		}
		break;
	}
}