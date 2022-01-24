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
struct sock {int dummy; } ;
struct tipc_sock {int /*<<< orphan*/  publications; int /*<<< orphan*/  portid; struct sock sk; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_ADDR ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_HAS_PUBL ; 
 int /*<<< orphan*/  TIPC_NLA_SOCK_REF ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct tipc_sock
			  *tsk)
{
	struct net *net = FUNC4(skb->sk);
	struct sock *sk = &tsk->sk;

	if (FUNC3(skb, TIPC_NLA_SOCK_REF, tsk->portid) ||
	    FUNC3(skb, TIPC_NLA_SOCK_ADDR, FUNC5(net)))
		return -EMSGSIZE;

	if (FUNC6(sk)) {
		if (FUNC0(skb, tsk))
			return -EMSGSIZE;
	} else if (!FUNC1(&tsk->publications)) {
		if (FUNC2(skb, TIPC_NLA_SOCK_HAS_PUBL))
			return -EMSGSIZE;
	}
	return 0;
}