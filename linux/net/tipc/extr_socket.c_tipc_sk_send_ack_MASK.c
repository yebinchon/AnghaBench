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
struct sock {int /*<<< orphan*/  sk_rcvbuf; } ;
struct tipc_sock {int peer_caps; int /*<<< orphan*/  rcv_win; struct sock sk; int /*<<< orphan*/  rcv_unacked; int /*<<< orphan*/  portid; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_ACK ; 
 int /*<<< orphan*/  CONN_MANAGER ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 int TIPC_BLOCK_FLOWCTL ; 
 int /*<<< orphan*/  TIPC_OK ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_sock*) ; 

__attribute__((used)) static void FUNC12(struct tipc_sock *tsk)
{
	struct sock *sk = &tsk->sk;
	struct net *net = FUNC4(sk);
	struct sk_buff *skb = NULL;
	struct tipc_msg *msg;
	u32 peer_port = FUNC11(tsk);
	u32 dnode = FUNC10(tsk);

	if (!FUNC7(sk))
		return;
	skb = FUNC5(CONN_MANAGER, CONN_ACK, INT_H_SIZE, 0,
			      dnode, FUNC9(tsk), peer_port,
			      tsk->portid, TIPC_OK);
	if (!skb)
		return;
	msg = FUNC0(skb);
	FUNC3(msg, tsk->rcv_unacked);
	tsk->rcv_unacked = 0;

	/* Adjust to and advertize the correct window limit */
	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL) {
		tsk->rcv_win = FUNC8(tsk->sk.sk_rcvbuf);
		FUNC2(msg, tsk->rcv_win);
	}
	FUNC6(net, skb, dnode, FUNC1(msg));
}