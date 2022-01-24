#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  slock; } ;
struct sock {TYPE_1__ sk_lock; } ;
struct tipc_sock {struct sock sk; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 int TIPC_ERR_NO_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct tipc_sock* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct net*,struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sk_buff**,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*,struct sock*,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 struct tipc_sock* FUNC15 (struct net*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC16 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 

void FUNC19(struct net *net, struct sk_buff_head *inputq)
{
	struct sk_buff_head xmitq;
	u32 dnode, dport = 0;
	int err;
	struct tipc_sock *tsk;
	struct sock *sk;
	struct sk_buff *skb;

	FUNC0(&xmitq);
	while (FUNC4(inputq)) {
		dport = FUNC17(inputq, dport);
		tsk = FUNC15(net, dport);

		if (FUNC2(tsk)) {
			sk = &tsk->sk;
			if (FUNC2(FUNC7(&sk->sk_lock.slock))) {
				FUNC14(inputq, sk, dport, &xmitq);
				FUNC8(&sk->sk_lock.slock);
			}
			/* Send pending response/rejected messages, if any */
			FUNC11(FUNC5(sk), &xmitq);
			FUNC6(sk);
			continue;
		}
		/* No destination socket => dequeue skb if still there */
		skb = FUNC16(inputq, dport);
		if (!skb)
			return;

		/* Try secondary lookup if unresolved named message */
		err = TIPC_ERR_NO_PORT;
		if (FUNC9(net, skb, &err))
			goto xmit;

		/* Prepare for message rejection */
		if (!FUNC10(FUNC13(net), &skb, err))
			continue;

		FUNC18(NULL, skb, TIPC_DUMP_NONE, "@sk_rcv!");
xmit:
		dnode = FUNC3(FUNC1(skb));
		FUNC12(net, skb, dnode, dport);
	}
}