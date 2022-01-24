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
struct TYPE_3__ {int /*<<< orphan*/  deferredq; } ;
struct tipc_sock {TYPE_1__ mc_method; struct tipc_group* group; } ;
struct tipc_msg {int dummy; } ;
struct tipc_group {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;struct sk_buff_head sk_receive_queue; int /*<<< orphan*/  sk_drops; } ;
struct sk_buff {int truesize; } ;
struct net {int dummy; } ;
struct TYPE_4__ {scalar_t__ bytes_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_DUMP_ALL ; 
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 int TIPC_ERR_NO_PORT ; 
 int TIPC_ERR_OVERLOAD ; 
 int TIPC_MCAST_MSG ; 
 int TIPC_OK ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tipc_msg* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 scalar_t__ FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int FUNC9 (struct tipc_msg*) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 
 int FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct sock*) ; 
 struct net* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_group*,struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct net*,int /*<<< orphan*/ *,struct sk_buff_head*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct sk_buff**,int) ; 
 int /*<<< orphan*/  FUNC18 (struct net*) ; 
 struct tipc_sock* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static void FUNC28(struct sock *sk, struct sk_buff *skb,
			       struct sk_buff_head *xmitq)
{
	bool sk_conn = !FUNC22(sk);
	struct tipc_sock *tsk = FUNC19(sk);
	struct tipc_group *grp = tsk->group;
	struct tipc_msg *hdr = FUNC5(skb);
	struct net *net = FUNC13(sk);
	struct sk_buff_head inputq;
	int mtyp = FUNC9(hdr);
	int limit, err = TIPC_OK;

	FUNC24(sk, skb, TIPC_DUMP_ALL, " ");
	FUNC0(skb)->bytes_read = 0;
	FUNC2(&inputq);
	FUNC3(&inputq, skb);

	if (FUNC27(!FUNC8(hdr)))
		FUNC21(sk, &inputq, xmitq);

	if (FUNC27(grp))
		FUNC15(grp, &inputq, xmitq);

	if (FUNC27(!grp) && mtyp == TIPC_MCAST_MSG)
		FUNC16(net, &tsk->mc_method.deferredq, &inputq);

	/* Validate and add to receive buffer if there is space */
	while ((skb = FUNC1(&inputq))) {
		hdr = FUNC5(skb);
		limit = FUNC10(sk, skb);
		if ((sk_conn && !FUNC20(tsk, skb)) ||
		    (!sk_conn && FUNC6(hdr)) ||
		    (!grp && FUNC7(hdr)))
			err = TIPC_ERR_NO_PORT;
		else if (FUNC11(sk) + skb->truesize >= limit) {
			FUNC23(sk, skb, TIPC_DUMP_ALL,
					   "err_overload2!");
			FUNC4(&sk->sk_drops);
			err = TIPC_ERR_OVERLOAD;
		}

		if (FUNC27(err)) {
			if (FUNC17(FUNC18(net), &skb, err)) {
				FUNC26(sk, skb, TIPC_DUMP_NONE,
						      "@filter_rcv!");
				FUNC3(xmitq, skb);
			}
			err = TIPC_OK;
			continue;
		}
		FUNC3(&sk->sk_receive_queue, skb);
		FUNC12(skb, sk);
		FUNC25(sk, skb, TIPC_DUMP_ALL,
					 "rcvq >90% allocated!");
		sk->sk_data_ready(sk);
	}
}