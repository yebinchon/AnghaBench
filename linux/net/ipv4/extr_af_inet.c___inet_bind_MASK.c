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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_userlocks; TYPE_2__* sk_prot; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct inet_sock {scalar_t__ inet_rcv_saddr; scalar_t__ inet_saddr; scalar_t__ inet_dport; scalar_t__ inet_daddr; scalar_t__ inet_num; int /*<<< orphan*/  inet_sport; scalar_t__ bind_address_no_port; } ;
struct TYPE_4__ {scalar_t__ (* get_port ) (struct sock*,unsigned short) ;} ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_UNSPEC ; 
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int EACCES ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int RTN_BROADCAST ; 
 int RTN_LOCAL ; 
 int RTN_MULTICAST ; 
 int /*<<< orphan*/  RT_TABLE_LOCAL ; 
 int /*<<< orphan*/  SOCK_BINDADDR_LOCK ; 
 int /*<<< orphan*/  SOCK_BINDPORT_LOCK ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct net*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct inet_sock*) ; 
 unsigned short FUNC5 (struct net*) ; 
 struct inet_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned short FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 struct net* FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (struct sock*,unsigned short) ; 

int FUNC15(struct sock *sk, struct sockaddr *uaddr, int addr_len,
		bool force_bind_address_no_port, bool with_lock)
{
	struct sockaddr_in *addr = (struct sockaddr_in *)uaddr;
	struct inet_sock *inet = FUNC6(sk);
	struct net *net = FUNC13(sk);
	unsigned short snum;
	int chk_addr_ret;
	u32 tb_id = RT_TABLE_LOCAL;
	int err;

	if (addr->sin_family != AF_INET) {
		/* Compatibility games : accept AF_UNSPEC (mapped to AF_INET)
		 * only if s_addr is INADDR_ANY.
		 */
		err = -EAFNOSUPPORT;
		if (addr->sin_family != AF_UNSPEC ||
		    addr->sin_addr.s_addr != FUNC1(INADDR_ANY))
			goto out;
	}

	tb_id = FUNC7(net, sk->sk_bound_dev_if) ? : tb_id;
	chk_addr_ret = FUNC3(net, addr->sin_addr.s_addr, tb_id);

	/* Not specified by any standard per-se, however it breaks too
	 * many applications when removed.  It is unfortunate since
	 * allowing applications to make a non-local bind solves
	 * several problems with systems using dynamic addressing.
	 * (ie. your servers still start up even if your ISDN link
	 *  is temporarily down)
	 */
	err = -EADDRNOTAVAIL;
	if (!FUNC4(net, inet) &&
	    addr->sin_addr.s_addr != FUNC1(INADDR_ANY) &&
	    chk_addr_ret != RTN_LOCAL &&
	    chk_addr_ret != RTN_MULTICAST &&
	    chk_addr_ret != RTN_BROADCAST)
		goto out;

	snum = FUNC10(addr->sin_port);
	err = -EACCES;
	if (snum && snum < FUNC5(net) &&
	    !FUNC9(net->user_ns, CAP_NET_BIND_SERVICE))
		goto out;

	/*      We keep a pair of addresses. rcv_saddr is the one
	 *      used by hash lookups, and saddr is used for transmit.
	 *
	 *      In the BSD API these are the same except where it
	 *      would be illegal to use them (multicast/broadcast) in
	 *      which case the sending device address is used.
	 */
	if (with_lock)
		FUNC8(sk);

	/* Check these errors (active socket, double bind). */
	err = -EINVAL;
	if (sk->sk_state != TCP_CLOSE || inet->inet_num)
		goto out_release_sock;

	inet->inet_rcv_saddr = inet->inet_saddr = addr->sin_addr.s_addr;
	if (chk_addr_ret == RTN_MULTICAST || chk_addr_ret == RTN_BROADCAST)
		inet->inet_saddr = 0;  /* Use device */

	/* Make sure we are allowed to bind here. */
	if (snum || !(inet->bind_address_no_port ||
		      force_bind_address_no_port)) {
		if (sk->sk_prot->get_port(sk, snum)) {
			inet->inet_saddr = inet->inet_rcv_saddr = 0;
			err = -EADDRINUSE;
			goto out_release_sock;
		}
		err = FUNC0(sk);
		if (err) {
			inet->inet_saddr = inet->inet_rcv_saddr = 0;
			goto out_release_sock;
		}
	}

	if (inet->inet_rcv_saddr)
		sk->sk_userlocks |= SOCK_BINDADDR_LOCK;
	if (snum)
		sk->sk_userlocks |= SOCK_BINDPORT_LOCK;
	inet->inet_sport = FUNC2(inet->inet_num);
	inet->inet_daddr = 0;
	inet->inet_dport = 0;
	FUNC12(sk);
	err = 0;
out_release_sock:
	if (with_lock)
		FUNC11(sk);
out:
	return err;
}