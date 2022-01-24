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
struct tipc_msg {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_timer; } ;
struct tipc_sock {int peer_caps; void* snd_win; void* rcv_win; int /*<<< orphan*/  portid; int /*<<< orphan*/  max_pkt; struct tipc_msg phdr; struct sock sk; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONN_PROBING_INTV ; 
 void* FLOWCTL_MSG_WIN ; 
 int /*<<< orphan*/  SHORT_H_SIZE ; 
 int TIPC_BLOCK_FLOWCTL ; 
 int /*<<< orphan*/  TIPC_CONN_MSG ; 
 int /*<<< orphan*/  TIPC_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct net* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct tipc_sock *tsk, u32 peer_port,
				u32 peer_node)
{
	struct sock *sk = &tsk->sk;
	struct net *net = FUNC8(sk);
	struct tipc_msg *msg = &tsk->phdr;

	FUNC5(msg, 0);
	FUNC1(msg, peer_node);
	FUNC2(msg, peer_port);
	FUNC6(msg, TIPC_CONN_MSG);
	FUNC4(msg, 0);
	FUNC3(msg, SHORT_H_SIZE);

	FUNC7(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
	FUNC12(sk, TIPC_ESTABLISHED);
	FUNC9(net, peer_node, tsk->portid, peer_port);
	tsk->max_pkt = FUNC11(net, peer_node, tsk->portid);
	tsk->peer_caps = FUNC10(net, peer_node);
	FUNC0(&sk->sk_write_queue);
	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
		return;

	/* Fall back to message based flow control */
	tsk->rcv_win = FLOWCTL_MSG_WIN;
	tsk->snd_win = FLOWCTL_MSG_WIN;
}