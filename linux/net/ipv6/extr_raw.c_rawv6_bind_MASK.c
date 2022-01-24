#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {scalar_t__ sin6_family; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_scope_id; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_v6_rcv_saddr; scalar_t__ sk_bound_dev_if; } ;
struct net_device {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  saddr; } ;
struct inet_sock {int /*<<< orphan*/  inet_saddr; int /*<<< orphan*/  inet_rcv_saddr; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int /*<<< orphan*/  ip_nonlocal_bind; } ;
struct TYPE_7__ {TYPE_1__ sysctl; } ;
struct TYPE_8__ {TYPE_2__ ipv6; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 int /*<<< orphan*/  LOOPBACK4_IPV6 ; 
 int SIN6_LEN_RFC2133 ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ FUNC0 (int) ; 
 struct net_device* FUNC1 (TYPE_3__*,scalar_t__) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 TYPE_3__* FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC3(sk);
	struct ipv6_pinfo *np = FUNC2(sk);
	struct sockaddr_in6 *addr = (struct sockaddr_in6 *) uaddr;
	__be32 v4addr = 0;
	int addr_type;
	int err;

	if (addr_len < SIN6_LEN_RFC2133)
		return -EINVAL;

	if (addr->sin6_family != AF_INET6)
		return -EINVAL;

	addr_type = FUNC4(&addr->sin6_addr);

	/* Raw sockets are IPv6 only */
	if (addr_type == IPV6_ADDR_MAPPED)
		return -EADDRNOTAVAIL;

	FUNC6(sk);

	err = -EINVAL;
	if (sk->sk_state != TCP_CLOSE)
		goto out;

	FUNC7();
	/* Check if the address belongs to the host. */
	if (addr_type != IPV6_ADDR_ANY) {
		struct net_device *dev = NULL;

		if (FUNC0(addr_type)) {
			if (addr_len >= sizeof(struct sockaddr_in6) &&
			    addr->sin6_scope_id) {
				/* Override any existing binding, if another
				 * one is supplied by user.
				 */
				sk->sk_bound_dev_if = addr->sin6_scope_id;
			}

			/* Binding to link-local address requires an interface */
			if (!sk->sk_bound_dev_if)
				goto out_unlock;
		}

		if (sk->sk_bound_dev_if) {
			err = -ENODEV;
			dev = FUNC1(FUNC10(sk),
						   sk->sk_bound_dev_if);
			if (!dev)
				goto out_unlock;
		}

		/* ipv4 addr of the socket is invalid.  Only the
		 * unspecified and mapped address have a v4 equivalent.
		 */
		v4addr = LOOPBACK4_IPV6;
		if (!(addr_type & IPV6_ADDR_MULTICAST) &&
		    !FUNC10(sk)->ipv6.sysctl.ip_nonlocal_bind) {
			err = -EADDRNOTAVAIL;
			if (!FUNC5(FUNC10(sk), &addr->sin6_addr,
					   dev, 0)) {
				goto out_unlock;
			}
		}
	}

	inet->inet_rcv_saddr = inet->inet_saddr = v4addr;
	sk->sk_v6_rcv_saddr = addr->sin6_addr;
	if (!(addr_type & IPV6_ADDR_MULTICAST))
		np->saddr = addr->sin6_addr;
	err = 0;
out_unlock:
	FUNC8();
out:
	FUNC9(sk);
	return err;
}