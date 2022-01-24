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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_sock {int probe_unacked; int /*<<< orphan*/  portid; } ;
struct sock {int /*<<< orphan*/  sk_timer; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_MANAGER ; 
 int /*<<< orphan*/  CONN_PROBE ; 
 scalar_t__ CONN_PROBING_INTV ; 
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 int /*<<< orphan*/  TIPC_DISCONNECTING ; 
 int /*<<< orphan*/  TIPC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tipc_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_sock*) ; 

__attribute__((used)) static void FUNC11(struct sock *sk,
					struct sk_buff_head *list)
{
	struct tipc_sock *tsk = FUNC7(sk);
	u32 pnode = FUNC9(tsk);
	u32 pport = FUNC10(tsk);
	u32 self = FUNC8(tsk);
	u32 oport = tsk->portid;
	struct sk_buff *skb;

	if (tsk->probe_unacked) {
		FUNC6(sk, TIPC_DISCONNECTING);
		sk->sk_err = ECONNABORTED;
		FUNC5(FUNC2(sk), pnode, pport);
		sk->sk_state_change(sk);
		return;
	}
	/* Prepare new probe */
	skb = FUNC4(CONN_MANAGER, CONN_PROBE, INT_H_SIZE, 0,
			      pnode, self, pport, oport, TIPC_OK);
	if (skb)
		FUNC0(list, skb);
	tsk->probe_unacked = true;
	FUNC1(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
}