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
struct sockaddr_l2tpip6 {scalar_t__ l2tp_family; int l2tp_scope_id; int /*<<< orphan*/  l2tp_conn_id; int /*<<< orphan*/  l2tp_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_bound_dev_if; int /*<<< orphan*/  sk_v6_rcv_saddr; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  saddr; } ;
struct inet_sock {void* inet_rcv_saddr; void* inet_saddr; } ;
typedef  void* __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  conn_id; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 void* LOOPBACK4_IPV6 ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct net*,int) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2tp_ip6_bind_table ; 
 int /*<<< orphan*/  l2tp_ip6_lock ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC3(sk);
	struct ipv6_pinfo *np = FUNC2(sk);
	struct sockaddr_l2tpip6 *addr = (struct sockaddr_l2tpip6 *) uaddr;
	struct net *net = FUNC14(sk);
	__be32 v4addr = 0;
	int bound_dev_if;
	int addr_type;
	int err;

	if (addr->l2tp_family != AF_INET6)
		return -EINVAL;
	if (addr_len < sizeof(*addr))
		return -EINVAL;

	addr_type = FUNC4(&addr->l2tp_addr);

	/* l2tp_ip6 sockets are IPv6 only */
	if (addr_type == IPV6_ADDR_MAPPED)
		return -EADDRNOTAVAIL;

	/* L2TP is point-point, not multicast */
	if (addr_type & IPV6_ADDR_MULTICAST)
		return -EADDRNOTAVAIL;

	FUNC7(sk);

	err = -EINVAL;
	if (!FUNC13(sk, SOCK_ZAPPED))
		goto out_unlock;

	if (sk->sk_state != TCP_CLOSE)
		goto out_unlock;

	bound_dev_if = sk->sk_bound_dev_if;

	/* Check if the address belongs to the host. */
	FUNC8();
	if (addr_type != IPV6_ADDR_ANY) {
		struct net_device *dev = NULL;

		if (addr_type & IPV6_ADDR_LINKLOCAL) {
			if (addr->l2tp_scope_id)
				bound_dev_if = addr->l2tp_scope_id;

			/* Binding to link-local address requires an
			 * interface.
			 */
			if (!bound_dev_if)
				goto out_unlock_rcu;

			err = -ENODEV;
			dev = FUNC1(FUNC14(sk), bound_dev_if);
			if (!dev)
				goto out_unlock_rcu;
		}

		/* ipv4 addr of the socket is invalid.  Only the
		 * unspecified and mapped address have a v4 equivalent.
		 */
		v4addr = LOOPBACK4_IPV6;
		err = -EADDRNOTAVAIL;
		if (!FUNC5(FUNC14(sk), &addr->l2tp_addr, dev, 0))
			goto out_unlock_rcu;
	}
	FUNC9();

	FUNC16(&l2tp_ip6_lock);
	if (FUNC0(net, &addr->l2tp_addr, NULL, bound_dev_if,
				   addr->l2tp_conn_id)) {
		FUNC17(&l2tp_ip6_lock);
		err = -EADDRINUSE;
		goto out_unlock;
	}

	inet->inet_saddr = v4addr;
	inet->inet_rcv_saddr = v4addr;
	sk->sk_bound_dev_if = bound_dev_if;
	sk->sk_v6_rcv_saddr = addr->l2tp_addr;
	np->saddr = addr->l2tp_addr;

	FUNC6(sk)->conn_id = addr->l2tp_conn_id;

	FUNC11(sk, &l2tp_ip6_bind_table);
	FUNC12(sk);
	FUNC17(&l2tp_ip6_lock);

	FUNC15(sk, SOCK_ZAPPED);
	FUNC10(sk);
	return 0;

out_unlock_rcu:
	FUNC9();
out_unlock:
	FUNC10(sk);

	return err;
}