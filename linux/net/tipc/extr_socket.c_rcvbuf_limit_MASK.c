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
struct tipc_sock {int peer_caps; } ;
struct tipc_msg {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned int FLOWCTL_MSG_LIM ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int TIPC_BLOCK_FLOWCTL ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 unsigned int FUNC4 (struct tipc_msg*) ; 
 int FUNC5 (struct tipc_msg*) ; 
 struct tipc_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static unsigned int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	struct tipc_sock *tsk = FUNC6(sk);
	struct tipc_msg *hdr = FUNC1(skb);

	if (FUNC7(FUNC5(hdr)))
		return FUNC0(sk->sk_rcvbuf);

	if (FUNC7(!FUNC3(hdr)))
		return FUNC0(sk->sk_rcvbuf) << FUNC4(hdr);

	if (FUNC2(tsk->peer_caps & TIPC_BLOCK_FLOWCTL))
		return FUNC0(sk->sk_rcvbuf);

	return FLOWCTL_MSG_LIM;
}