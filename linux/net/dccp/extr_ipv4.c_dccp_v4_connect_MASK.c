#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_route_caps; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct rtable {int rt_flags; int /*<<< orphan*/  dst; } ;
struct TYPE_11__ {scalar_t__ faddr; scalar_t__ optlen; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_5__ opt; } ;
struct flowi4 {scalar_t__ daddr; scalar_t__ saddr; } ;
struct TYPE_8__ {struct flowi4 ip4; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ fl; } ;
struct inet_sock {scalar_t__ inet_saddr; scalar_t__ inet_dport; int /*<<< orphan*/  inet_id; scalar_t__ inet_sport; int /*<<< orphan*/  inet_daddr; TYPE_4__ cork; int /*<<< orphan*/  inet_opt; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_iss; int /*<<< orphan*/  dccps_role; } ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;
struct TYPE_12__ {scalar_t__ icsk_ext_hdr_len; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  DCCP_CLOSED ; 
 int /*<<< orphan*/  DCCP_REQUESTING ; 
 int /*<<< orphan*/  DCCP_ROLE_CLIENT ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int FUNC1 (struct rtable*) ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  dccp_death_row ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 struct dccp_sock* FUNC5 (struct sock*) ; 
 TYPE_6__* FUNC6 (struct sock*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct sock*) ; 
 struct inet_sock* FUNC8 (struct sock*) ; 
 struct rtable* FUNC9 (struct flowi4*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct sock*) ; 
 struct rtable* FUNC10 (struct flowi4*,struct rtable*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct ip_options_rcu* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ *) ; 

int FUNC19(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	const struct sockaddr_in *usin = (struct sockaddr_in *)uaddr;
	struct inet_sock *inet = FUNC8(sk);
	struct dccp_sock *dp = FUNC5(sk);
	__be16 orig_sport, orig_dport;
	__be32 daddr, nexthop;
	struct flowi4 *fl4;
	struct rtable *rt;
	int err;
	struct ip_options_rcu *inet_opt;

	dp->dccps_role = DCCP_ROLE_CLIENT;

	if (addr_len < sizeof(struct sockaddr_in))
		return -EINVAL;

	if (usin->sin_family != AF_INET)
		return -EAFNOSUPPORT;

	nexthop = daddr = usin->sin_addr.s_addr;

	inet_opt = FUNC14(inet->inet_opt,
					     FUNC12(sk));
	if (inet_opt != NULL && inet_opt->opt.srr) {
		if (daddr == 0)
			return -EINVAL;
		nexthop = inet_opt->opt.faddr;
	}

	orig_sport = inet->inet_sport;
	orig_dport = usin->sin_port;
	fl4 = &inet->cork.fl.u.ip4;
	rt = FUNC9(fl4, nexthop, inet->inet_saddr,
			      FUNC2(sk), sk->sk_bound_dev_if,
			      IPPROTO_DCCP,
			      orig_sport, orig_dport, sk);
	if (FUNC0(rt))
		return FUNC1(rt);

	if (rt->rt_flags & (RTCF_MULTICAST | RTCF_BROADCAST)) {
		FUNC11(rt);
		return -ENETUNREACH;
	}

	if (inet_opt == NULL || !inet_opt->opt.srr)
		daddr = fl4->daddr;

	if (inet->inet_saddr == 0)
		inet->inet_saddr = fl4->saddr;
	FUNC17(sk, inet->inet_saddr);
	inet->inet_dport = usin->sin_port;
	FUNC16(sk, daddr);

	FUNC6(sk)->icsk_ext_hdr_len = 0;
	if (inet_opt)
		FUNC6(sk)->icsk_ext_hdr_len = inet_opt->opt.optlen;
	/*
	 * Socket identity is still unknown (sport may be zero).
	 * However we set state to DCCP_REQUESTING and not releasing socket
	 * lock select source port, enter ourselves into the hash tables and
	 * complete initialization after this.
	 */
	FUNC4(sk, DCCP_REQUESTING);
	err = FUNC7(&dccp_death_row, sk);
	if (err != 0)
		goto failure;

	rt = FUNC10(fl4, rt, orig_sport, orig_dport,
			       inet->inet_sport, inet->inet_dport, sk);
	if (FUNC0(rt)) {
		err = FUNC1(rt);
		rt = NULL;
		goto failure;
	}
	/* OK, now commit destination to socket.  */
	FUNC18(sk, &rt->dst);

	dp->dccps_iss = FUNC15(inet->inet_saddr,
						    inet->inet_daddr,
						    inet->inet_sport,
						    inet->inet_dport);
	inet->inet_id = FUNC13();

	err = FUNC3(sk);
	rt = NULL;
	if (err != 0)
		goto failure;
out:
	return err;
failure:
	/*
	 * This unhashes the socket and releases the local port, if necessary.
	 */
	FUNC4(sk, DCCP_CLOSED);
	FUNC11(rt);
	sk->sk_route_caps = 0;
	inet->inet_dport = 0;
	goto out;
}