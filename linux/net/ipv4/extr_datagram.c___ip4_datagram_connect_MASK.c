#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int /*<<< orphan*/  sin_port; TYPE_4__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bound_dev_if; int /*<<< orphan*/  sk_state; TYPE_5__* sk_prot; int /*<<< orphan*/  sk_protocol; } ;
struct rtable {int rt_flags; int /*<<< orphan*/  dst; } ;
struct flowi4 {int /*<<< orphan*/  daddr; scalar_t__ saddr; } ;
struct TYPE_6__ {struct flowi4 ip4; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_2__ fl; } ;
struct inet_sock {int mc_index; int /*<<< orphan*/  inet_id; int /*<<< orphan*/  inet_dport; int /*<<< orphan*/  inet_daddr; scalar_t__ inet_rcv_saddr; scalar_t__ inet_saddr; int /*<<< orphan*/  inet_sport; TYPE_3__ cork; scalar_t__ mc_addr; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_10__ {int /*<<< orphan*/  (* rehash ) (struct sock*) ;} ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EACCES ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int FUNC2 (struct rtable*) ; 
 int RTCF_BROADCAST ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  SOCK_BROADCAST ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 struct rtable* FUNC5 (struct flowi4*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtable*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 

int FUNC17(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC4(sk);
	struct sockaddr_in *usin = (struct sockaddr_in *) uaddr;
	struct flowi4 *fl4;
	struct rtable *rt;
	__be32 saddr;
	int oif;
	int err;


	if (addr_len < sizeof(*usin))
		return -EINVAL;

	if (usin->sin_family != AF_INET)
		return -EAFNOSUPPORT;

	FUNC11(sk);

	oif = sk->sk_bound_dev_if;
	saddr = inet->inet_saddr;
	if (FUNC7(usin->sin_addr.s_addr)) {
		if (!oif || FUNC8(FUNC15(sk), oif))
			oif = inet->mc_index;
		if (!saddr)
			saddr = inet->mc_addr;
	}
	fl4 = &inet->cork.fl.u.ip4;
	rt = FUNC5(fl4, usin->sin_addr.s_addr, saddr,
			      FUNC3(sk), oif,
			      sk->sk_protocol,
			      inet->inet_sport, usin->sin_port, sk);
	if (FUNC1(rt)) {
		err = FUNC2(rt);
		if (err == -ENETUNREACH)
			FUNC0(FUNC15(sk), IPSTATS_MIB_OUTNOROUTES);
		goto out;
	}

	if ((rt->rt_flags & RTCF_BROADCAST) && !FUNC14(sk, SOCK_BROADCAST)) {
		FUNC6(rt);
		err = -EACCES;
		goto out;
	}
	if (!inet->inet_saddr)
		inet->inet_saddr = fl4->saddr;	/* Update source address */
	if (!inet->inet_rcv_saddr) {
		inet->inet_rcv_saddr = fl4->saddr;
		if (sk->sk_prot->rehash)
			sk->sk_prot->rehash(sk);
	}
	inet->inet_daddr = fl4->daddr;
	inet->inet_dport = usin->sin_port;
	FUNC10(sk, true);
	sk->sk_state = TCP_ESTABLISHED;
	FUNC13(sk);
	inet->inet_id = FUNC9();

	FUNC12(sk, &rt->dst);
	err = 0;
out:
	return err;
}