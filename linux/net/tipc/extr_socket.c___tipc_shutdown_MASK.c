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
struct tipc_sock {int /*<<< orphan*/  portid; int /*<<< orphan*/  cong_link_cnt; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ bytes_read; } ;

/* Variables and functions */
 long CONN_TIMEOUT_DEFAULT ; 
 int /*<<< orphan*/  SHORT_H_SIZE ; 
 int /*<<< orphan*/  TIPC_CONN_MSG ; 
 int /*<<< orphan*/  TIPC_CRITICAL_IMPORTANCE ; 
 scalar_t__ TIPC_DISCONNECTING ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct net* FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,scalar_t__) ; 
 struct tipc_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*,long*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct tipc_sock*) ; 

__attribute__((used)) static void FUNC17(struct socket *sock, int error)
{
	struct sock *sk = sock->sk;
	struct tipc_sock *tsk = FUNC9(sk);
	struct net *net = FUNC4(sk);
	long timeout = CONN_TIMEOUT_DEFAULT;
	u32 dnode = FUNC15(tsk);
	struct sk_buff *skb;

	/* Avoid that hi-prio shutdown msgs bypass msgs in link wakeup queue */
	FUNC12(sock, &timeout, (!tsk->cong_link_cnt &&
					    !FUNC13(tsk)));

	/* Remove any pending SYN message */
	FUNC2(&sk->sk_write_queue);

	/* Reject all unreceived messages, except on an active connection
	 * (which disconnects locally & sends a 'FIN+' to peer).
	 */
	while ((skb = FUNC1(&sk->sk_receive_queue)) != NULL) {
		if (FUNC0(skb)->bytes_read) {
			FUNC3(skb);
			continue;
		}
		if (!FUNC11(sk) &&
		    sk->sk_state != TIPC_DISCONNECTING) {
			FUNC8(sk, TIPC_DISCONNECTING);
			FUNC6(net, dnode, tsk->portid);
		}
		FUNC10(sk, skb, error);
	}

	if (FUNC11(sk))
		return;

	if (sk->sk_state != TIPC_DISCONNECTING) {
		skb = FUNC5(TIPC_CRITICAL_IMPORTANCE,
				      TIPC_CONN_MSG, SHORT_H_SIZE, 0, dnode,
				      FUNC14(tsk), FUNC16(tsk),
				      tsk->portid, error);
		if (skb)
			FUNC7(net, skb, dnode, tsk->portid);
		FUNC6(net, dnode, tsk->portid);
		FUNC8(sk, TIPC_DISCONNECTING);
	}
}