#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  mss_clamp; scalar_t__ ts_recent_stamp; scalar_t__ ts_recent; } ;
struct tcp_sock {int /*<<< orphan*/  tsoffset; int /*<<< orphan*/  write_seq; int /*<<< orphan*/  repair; TYPE_7__ rx_opt; } ;
struct TYPE_14__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_route_caps; int /*<<< orphan*/  sk_gso_type; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct rtable {int rt_flags; int /*<<< orphan*/  dst; } ;
struct TYPE_18__ {scalar_t__ faddr; scalar_t__ optlen; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_6__ opt; } ;
struct inet_timewait_death_row {int dummy; } ;
struct flowi4 {scalar_t__ daddr; scalar_t__ saddr; } ;
struct TYPE_15__ {struct flowi4 ip4; } ;
struct TYPE_16__ {TYPE_3__ u; } ;
struct TYPE_17__ {TYPE_4__ fl; } ;
struct inet_sock {scalar_t__ inet_daddr; scalar_t__ inet_dport; int /*<<< orphan*/  inet_id; scalar_t__ inet_saddr; scalar_t__ inet_sport; TYPE_5__ cork; int /*<<< orphan*/  inet_opt; } ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;
struct TYPE_13__ {struct inet_timewait_death_row tcp_death_row; } ;
struct TYPE_20__ {TYPE_1__ ipv4; } ;
struct TYPE_12__ {scalar_t__ icsk_ext_hdr_len; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int FUNC2 (struct rtable*) ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_MSS_DEFAULT ; 
 int /*<<< orphan*/  TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC5 (struct sock*) ; 
 int FUNC6 (struct inet_timewait_death_row*,struct sock*) ; 
 struct inet_sock* FUNC7 (struct sock*) ; 
 struct rtable* FUNC8 (struct flowi4*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct sock*) ; 
 struct rtable* FUNC9 (struct flowi4*,struct rtable*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtable*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct ip_options_rcu* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC21 (struct sock*) ; 
 int FUNC22 (struct sock*) ; 
 scalar_t__ FUNC23 (struct sock*,int*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC25 (struct sock*) ; 

int FUNC26(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_in *usin = (struct sockaddr_in *)uaddr;
	struct inet_sock *inet = FUNC7(sk);
	struct tcp_sock *tp = FUNC25(sk);
	__be16 orig_sport, orig_dport;
	__be32 daddr, nexthop;
	struct flowi4 *fl4;
	struct rtable *rt;
	int err;
	struct ip_options_rcu *inet_opt;
	struct inet_timewait_death_row *tcp_death_row = &FUNC21(sk)->ipv4.tcp_death_row;

	if (addr_len < sizeof(struct sockaddr_in))
		return -EINVAL;

	if (usin->sin_family != AF_INET)
		return -EAFNOSUPPORT;

	nexthop = daddr = usin->sin_addr.s_addr;
	inet_opt = FUNC14(inet->inet_opt,
					     FUNC12(sk));
	if (inet_opt && inet_opt->opt.srr) {
		if (!daddr)
			return -EINVAL;
		nexthop = inet_opt->opt.faddr;
	}

	orig_sport = inet->inet_sport;
	orig_dport = usin->sin_port;
	fl4 = &inet->cork.fl.u.ip4;
	rt = FUNC8(fl4, nexthop, inet->inet_saddr,
			      FUNC3(sk), sk->sk_bound_dev_if,
			      IPPROTO_TCP,
			      orig_sport, orig_dport, sk);
	if (FUNC1(rt)) {
		err = FUNC2(rt);
		if (err == -ENETUNREACH)
			FUNC0(FUNC21(sk), IPSTATS_MIB_OUTNOROUTES);
		return err;
	}

	if (rt->rt_flags & (RTCF_MULTICAST | RTCF_BROADCAST)) {
		FUNC10(rt);
		return -ENETUNREACH;
	}

	if (!inet_opt || !inet_opt->opt.srr)
		daddr = fl4->daddr;

	if (!inet->inet_saddr)
		inet->inet_saddr = fl4->saddr;
	FUNC18(sk, inet->inet_saddr);

	if (tp->rx_opt.ts_recent_stamp && inet->inet_daddr != daddr) {
		/* Reset inherited state */
		tp->rx_opt.ts_recent	   = 0;
		tp->rx_opt.ts_recent_stamp = 0;
		if (FUNC11(!tp->repair))
			FUNC4(tp->write_seq, 0);
	}

	inet->inet_dport = usin->sin_port;
	FUNC17(sk, daddr);

	FUNC5(sk)->icsk_ext_hdr_len = 0;
	if (inet_opt)
		FUNC5(sk)->icsk_ext_hdr_len = inet_opt->opt.optlen;

	tp->rx_opt.mss_clamp = TCP_MSS_DEFAULT;

	/* Socket identity is still unknown (sport may be zero).
	 * However we set state to SYN-SENT and not releasing socket
	 * lock select source port, enter ourselves into the hash tables and
	 * complete initialization after this.
	 */
	FUNC24(sk, TCP_SYN_SENT);
	err = FUNC6(tcp_death_row, sk);
	if (err)
		goto failure;

	FUNC19(sk);

	rt = FUNC9(fl4, rt, orig_sport, orig_dport,
			       inet->inet_sport, inet->inet_dport, sk);
	if (FUNC1(rt)) {
		err = FUNC2(rt);
		rt = NULL;
		goto failure;
	}
	/* OK, now commit destination to socket.  */
	sk->sk_gso_type = SKB_GSO_TCPV4;
	FUNC20(sk, &rt->dst);
	rt = NULL;

	if (FUNC11(!tp->repair)) {
		if (!tp->write_seq)
			FUNC4(tp->write_seq,
				   FUNC15(inet->inet_saddr,
						  inet->inet_daddr,
						  inet->inet_sport,
						  usin->sin_port));
		tp->tsoffset = FUNC16(FUNC21(sk),
						 inet->inet_saddr,
						 inet->inet_daddr);
	}

	inet->inet_id = FUNC13();

	if (FUNC23(sk, &err))
		return err;
	if (err)
		goto failure;

	err = FUNC22(sk);

	if (err)
		goto failure;

	return 0;

failure:
	/*
	 * This unhashes the socket and releases the local port,
	 * if necessary.
	 */
	FUNC24(sk, TCP_CLOSE);
	FUNC10(rt);
	sk->sk_route_caps = 0;
	inet->inet_dport = 0;
	return err;
}