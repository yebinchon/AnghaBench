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
struct socket {int /*<<< orphan*/  state; struct sock* sk; } ;
struct TYPE_4__ {scalar_t__ s_node; int /*<<< orphan*/  s_net; } ;
struct sockaddr_at {scalar_t__ sat_family; TYPE_2__ sat_addr; int /*<<< orphan*/  sat_port; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_state; } ;
struct atalk_sock {scalar_t__ dest_node; int /*<<< orphan*/  dest_net; int /*<<< orphan*/  dest_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 scalar_t__ AF_APPLETALK ; 
 scalar_t__ ATADDR_BCAST ; 
 int EACCES ; 
 int EAFNOSUPPORT ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  SOCK_BROADCAST ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 struct atalk_sock* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, struct sockaddr *uaddr,
			 int addr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct atalk_sock *at = FUNC0(sk);
	struct sockaddr_at *addr;
	int err;

	sk->sk_state   = TCP_CLOSE;
	sock->state = SS_UNCONNECTED;

	if (addr_len != sizeof(*addr))
		return -EINVAL;

	addr = (struct sockaddr_at *)uaddr;

	if (addr->sat_family != AF_APPLETALK)
		return -EAFNOSUPPORT;

	if (addr->sat_addr.s_node == ATADDR_BCAST &&
	    !FUNC6(sk, SOCK_BROADCAST)) {
#if 1
		FUNC4("atalk_connect: %s is broken and did not set SO_BROADCAST.\n",
			current->comm);
#else
		return -EACCES;
#endif
	}

	FUNC3(sk);
	err = -EBUSY;
	if (FUNC6(sk, SOCK_ZAPPED))
		if (FUNC1(sk) < 0)
			goto out;

	err = -ENETUNREACH;
	if (!FUNC2(&addr->sat_addr))
		goto out;

	at->dest_port = addr->sat_port;
	at->dest_net  = addr->sat_addr.s_net;
	at->dest_node = addr->sat_addr.s_node;

	sock->state  = SS_CONNECTED;
	sk->sk_state = TCP_ESTABLISHED;
	err = 0;
out:
	FUNC5(sk);
	return err;
}