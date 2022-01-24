#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void** s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; TYPE_2__ sin6_addr; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_port; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int sk_ipv6only; int /*<<< orphan*/  sk_userlocks; TYPE_1__* sk_prot; TYPE_2__ sk_v6_rcv_saddr; scalar_t__ sk_bound_dev_if; } ;
struct net_device {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct ipv6_pinfo {TYPE_2__ saddr; } ;
struct inet_sock {scalar_t__ inet_daddr; scalar_t__ inet_dport; scalar_t__ inet_num; int /*<<< orphan*/  inet_sport; scalar_t__ bind_address_no_port; void* inet_saddr; void* inet_rcv_saddr; } ;
typedef  void* __be32 ;
struct TYPE_4__ {scalar_t__ (* get_port ) (struct sock*,unsigned short) ;} ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int EACCES ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 void* LOOPBACK4_IPV6 ; 
 int RTN_BROADCAST ; 
 int RTN_LOCAL ; 
 int RTN_MULTICAST ; 
 int /*<<< orphan*/  SOCK_BINDADDR_LOCK ; 
 int /*<<< orphan*/  SOCK_BINDPORT_LOCK ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ FUNC1 (int) ; 
 struct net_device* FUNC2 (struct net*,scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 int FUNC6 (struct net*,struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct inet_sock*) ; 
 unsigned short FUNC8 (struct net*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 struct inet_sock* FUNC10 (struct sock*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct inet_sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct net*,TYPE_2__*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned short FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 struct net* FUNC20 (struct sock*) ; 
 scalar_t__ FUNC21 (struct sock*,unsigned short) ; 

__attribute__((used)) static int FUNC22(struct sock *sk, struct sockaddr *uaddr, int addr_len,
			bool force_bind_address_no_port, bool with_lock)
{
	struct sockaddr_in6 *addr = (struct sockaddr_in6 *)uaddr;
	struct inet_sock *inet = FUNC10(sk);
	struct ipv6_pinfo *np = FUNC5(sk);
	struct net *net = FUNC20(sk);
	__be32 v4addr = 0;
	unsigned short snum;
	bool saved_ipv6only;
	int addr_type = 0;
	int err = 0;

	if (addr->sin6_family != AF_INET6)
		return -EAFNOSUPPORT;

	addr_type = FUNC11(&addr->sin6_addr);
	if ((addr_type & IPV6_ADDR_MULTICAST) && sk->sk_type == SOCK_STREAM)
		return -EINVAL;

	snum = FUNC16(addr->sin6_port);
	if (snum && snum < FUNC8(net) &&
	    !FUNC15(net->user_ns, CAP_NET_BIND_SERVICE))
		return -EACCES;

	if (with_lock)
		FUNC14(sk);

	/* Check these errors (active socket, double bind). */
	if (sk->sk_state != TCP_CLOSE || inet->inet_num) {
		err = -EINVAL;
		goto out;
	}

	/* Check if the address belongs to the host. */
	if (addr_type == IPV6_ADDR_MAPPED) {
		struct net_device *dev = NULL;
		int chk_addr_ret;

		/* Binding to v4-mapped address on a v6-only socket
		 * makes no sense
		 */
		if (sk->sk_ipv6only) {
			err = -EINVAL;
			goto out;
		}

		FUNC17();
		if (sk->sk_bound_dev_if) {
			dev = FUNC2(net, sk->sk_bound_dev_if);
			if (!dev) {
				err = -ENODEV;
				goto out_unlock;
			}
		}

		/* Reproduce AF_INET checks to make the bindings consistent */
		v4addr = addr->sin6_addr.s6_addr32[3];
		chk_addr_ret = FUNC6(net, dev, v4addr);
		FUNC18();

		if (!FUNC7(net, inet) &&
		    v4addr != FUNC3(INADDR_ANY) &&
		    chk_addr_ret != RTN_LOCAL &&
		    chk_addr_ret != RTN_MULTICAST &&
		    chk_addr_ret != RTN_BROADCAST) {
			err = -EADDRNOTAVAIL;
			goto out;
		}
	} else {
		if (addr_type != IPV6_ADDR_ANY) {
			struct net_device *dev = NULL;

			FUNC17();
			if (FUNC1(addr_type)) {
				if (addr_len >= sizeof(struct sockaddr_in6) &&
				    addr->sin6_scope_id) {
					/* Override any existing binding, if another one
					 * is supplied by user.
					 */
					sk->sk_bound_dev_if = addr->sin6_scope_id;
				}

				/* Binding to link-local address requires an interface */
				if (!sk->sk_bound_dev_if) {
					err = -EINVAL;
					goto out_unlock;
				}
			}

			if (sk->sk_bound_dev_if) {
				dev = FUNC2(net, sk->sk_bound_dev_if);
				if (!dev) {
					err = -ENODEV;
					goto out_unlock;
				}
			}

			/* ipv4 addr of the socket is invalid.  Only the
			 * unspecified and mapped address have a v4 equivalent.
			 */
			v4addr = LOOPBACK4_IPV6;
			if (!(addr_type & IPV6_ADDR_MULTICAST))	{
				if (!FUNC12(net, inet) &&
				    !FUNC13(net, &addr->sin6_addr,
						   dev, 0)) {
					err = -EADDRNOTAVAIL;
					goto out_unlock;
				}
			}
			FUNC18();
		}
	}

	inet->inet_rcv_saddr = v4addr;
	inet->inet_saddr = v4addr;

	sk->sk_v6_rcv_saddr = addr->sin6_addr;

	if (!(addr_type & IPV6_ADDR_MULTICAST))
		np->saddr = addr->sin6_addr;

	saved_ipv6only = sk->sk_ipv6only;
	if (addr_type != IPV6_ADDR_ANY && addr_type != IPV6_ADDR_MAPPED)
		sk->sk_ipv6only = 1;

	/* Make sure we are allowed to bind here. */
	if (snum || !(inet->bind_address_no_port ||
		      force_bind_address_no_port)) {
		if (sk->sk_prot->get_port(sk, snum)) {
			sk->sk_ipv6only = saved_ipv6only;
			FUNC9(sk);
			err = -EADDRINUSE;
			goto out;
		}
		err = FUNC0(sk);
		if (err) {
			sk->sk_ipv6only = saved_ipv6only;
			FUNC9(sk);
			goto out;
		}
	}

	if (addr_type != IPV6_ADDR_ANY)
		sk->sk_userlocks |= SOCK_BINDADDR_LOCK;
	if (snum)
		sk->sk_userlocks |= SOCK_BINDPORT_LOCK;
	inet->inet_sport = FUNC4(inet->inet_num);
	inet->inet_dport = 0;
	inet->inet_daddr = 0;
out:
	if (with_lock)
		FUNC19(sk);
	return err;
out_unlock:
	FUNC18();
	goto out;
}