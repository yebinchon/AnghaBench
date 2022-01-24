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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_protocol; } ;
struct netlink_sock {scalar_t__ dst_portid; scalar_t__ portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NETLINK_CONNECTED ; 
 struct sock* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netlink_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC5(struct sock *ssk, u32 portid)
{
	struct sock *sock;
	struct netlink_sock *nlk;

	sock = FUNC1(FUNC3(ssk), ssk->sk_protocol, portid);
	if (!sock)
		return FUNC0(-ECONNREFUSED);

	/* Don't bother queuing skb if kernel socket has no input function */
	nlk = FUNC2(sock);
	if (sock->sk_state == NETLINK_CONNECTED &&
	    nlk->dst_portid != FUNC2(ssk)->portid) {
		FUNC4(sock);
		return FUNC0(-ECONNREFUSED);
	}
	return sock;
}