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
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_l2tpip {scalar_t__ l2tp_family; int /*<<< orphan*/  l2tp_conn_id; TYPE_1__ l2tp_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct inet_sock {scalar_t__ inet_saddr; scalar_t__ inet_rcv_saddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  conn_id; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int RTN_BROADCAST ; 
 int RTN_LOCAL ; 
 int RTN_MULTICAST ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ FUNC0 (struct net*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,scalar_t__) ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  l2tp_ip_bind_table ; 
 int /*<<< orphan*/  l2tp_ip_lock ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC2(sk);
	struct sockaddr_l2tpip *addr = (struct sockaddr_l2tpip *) uaddr;
	struct net *net = FUNC10(sk);
	int ret;
	int chk_addr_ret;

	if (addr_len < sizeof(struct sockaddr_l2tpip))
		return -EINVAL;
	if (addr->l2tp_family != AF_INET)
		return -EINVAL;

	FUNC4(sk);

	ret = -EINVAL;
	if (!FUNC9(sk, SOCK_ZAPPED))
		goto out;

	if (sk->sk_state != TCP_CLOSE)
		goto out;

	chk_addr_ret = FUNC1(net, addr->l2tp_addr.s_addr);
	ret = -EADDRNOTAVAIL;
	if (addr->l2tp_addr.s_addr && chk_addr_ret != RTN_LOCAL &&
	    chk_addr_ret != RTN_MULTICAST && chk_addr_ret != RTN_BROADCAST)
		goto out;

	if (addr->l2tp_addr.s_addr)
		inet->inet_rcv_saddr = inet->inet_saddr = addr->l2tp_addr.s_addr;
	if (chk_addr_ret == RTN_MULTICAST || chk_addr_ret == RTN_BROADCAST)
		inet->inet_saddr = 0;  /* Use device */

	FUNC12(&l2tp_ip_lock);
	if (FUNC0(net, addr->l2tp_addr.s_addr, 0,
				  sk->sk_bound_dev_if, addr->l2tp_conn_id)) {
		FUNC13(&l2tp_ip_lock);
		ret = -EADDRINUSE;
		goto out;
	}

	FUNC8(sk);
	FUNC3(sk)->conn_id = addr->l2tp_conn_id;

	FUNC6(sk, &l2tp_ip_bind_table);
	FUNC7(sk);
	FUNC13(&l2tp_ip_lock);

	ret = 0;
	FUNC11(sk, SOCK_ZAPPED);

out:
	FUNC5(sk);

	return ret;
}