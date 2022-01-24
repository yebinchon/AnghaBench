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
struct sockaddr_l2tpip6 {int /*<<< orphan*/  l2tp_conn_id; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; struct in6_addr sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_bind_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  peer_conn_id; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int FUNC0 (struct sock*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct in6_addr*) ; 
 int /*<<< orphan*/  l2tp_ip6_bind_table ; 
 int /*<<< orphan*/  l2tp_ip6_lock ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sockaddr *uaddr,
			    int addr_len)
{
	struct sockaddr_l2tpip6 *lsa = (struct sockaddr_l2tpip6 *) uaddr;
	struct sockaddr_in6	*usin = (struct sockaddr_in6 *) uaddr;
	struct in6_addr	*daddr;
	int	addr_type;
	int rc;

	if (addr_len < sizeof(*lsa))
		return -EINVAL;

	if (usin->sin6_family != AF_INET6)
		return -EINVAL;

	addr_type = FUNC3(&usin->sin6_addr);
	if (addr_type & IPV6_ADDR_MULTICAST)
		return -EINVAL;

	if (addr_type & IPV6_ADDR_MAPPED) {
		daddr = &usin->sin6_addr;
		if (FUNC2(daddr->s6_addr32[3]))
			return -EINVAL;
	}

	FUNC5(sk);

	 /* Must bind first - autobinding does not work */
	if (FUNC8(sk, SOCK_ZAPPED)) {
		rc = -EINVAL;
		goto out_sk;
	}

	rc = FUNC0(sk, uaddr, addr_len);
	if (rc < 0)
		goto out_sk;

	FUNC4(sk)->peer_conn_id = lsa->l2tp_conn_id;

	FUNC9(&l2tp_ip6_lock);
	FUNC1(&sk->sk_bind_node);
	FUNC7(sk, &l2tp_ip6_bind_table);
	FUNC10(&l2tp_ip6_lock);

out_sk:
	FUNC6(sk);

	return rc;
}