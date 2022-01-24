#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcphdr {int doff; scalar_t__ fin; scalar_t__ syn; int /*<<< orphan*/  seq; int /*<<< orphan*/  ack_seq; scalar_t__ ack; int /*<<< orphan*/  source; scalar_t__ rst; } ;
struct tcp_md5sig_key {int dummy; } ;
typedef  struct sock {int sk_bound_dev_if; scalar_t__ sk_state; scalar_t__ sk_priority; } const sock ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_5__ {int flowlabel_reflect; } ;
struct TYPE_6__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ipv6_pinfo {scalar_t__ repflow; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {scalar_t__ tw_priority; int /*<<< orphan*/  tw_flowlabel; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FLOWLABEL_REFLECT_TCP_RESET ; 
 scalar_t__ TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sock const* FUNC2 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipv6hdr*) ; 
 struct ipv6hdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,unsigned char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (struct sock const*) ; 
 TYPE_3__* FUNC13 (struct sk_buff*) ; 
 struct net* FUNC14 (struct sock const*) ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 struct tcphdr* FUNC15 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC16 (struct sock const*) ; 
 int /*<<< orphan*/ * FUNC17 (struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 struct tcp_md5sig_key* FUNC19 (struct sock const*,int /*<<< orphan*/ *) ; 
 int FUNC20 (unsigned char*,struct tcp_md5sig_key*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock const*,struct sk_buff*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct tcp_md5sig_key*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct sock const*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC24(const struct sock *sk, struct sk_buff *skb)
{
	const struct tcphdr *th = FUNC15(skb);
	struct ipv6hdr *ipv6h = FUNC5(skb);
	u32 seq = 0, ack_seq = 0;
	struct tcp_md5sig_key *key = NULL;
#ifdef CONFIG_TCP_MD5SIG
	const __u8 *hash_location = NULL;
	unsigned char newhash[16];
	int genhash;
	struct sock *sk1 = NULL;
#endif
	__be32 label = 0;
	u32 priority = 0;
	struct net *net;
	int oif = 0;

	if (th->rst)
		return;

	/* If sk not NULL, it means we did a successful lookup and incoming
	 * route had to be correct. prequeue might have dropped our dst.
	 */
	if (!sk && !FUNC6(skb))
		return;

	net = sk ? FUNC14(sk) : FUNC1(FUNC13(skb)->dev);
#ifdef CONFIG_TCP_MD5SIG
	rcu_read_lock();
	hash_location = tcp_parse_md5sig_option(th);
	if (sk && sk_fullsock(sk)) {
		key = tcp_v6_md5_do_lookup(sk, &ipv6h->saddr);
	} else if (hash_location) {
		/*
		 * active side is lost. Try to find listening socket through
		 * source port, and then find md5 key through listening socket.
		 * we are not loose security here:
		 * Incoming packet is checked with md5 hash with finding key,
		 * no RST generated if md5 hash doesn't match.
		 */
		sk1 = inet6_lookup_listener(net,
					   &tcp_hashinfo, NULL, 0,
					   &ipv6h->saddr,
					   th->source, &ipv6h->daddr,
					   ntohs(th->source),
					   tcp_v6_iif_l3_slave(skb),
					   tcp_v6_sdif(skb));
		if (!sk1)
			goto out;

		key = tcp_v6_md5_do_lookup(sk1, &ipv6h->saddr);
		if (!key)
			goto out;

		genhash = tcp_v6_md5_hash_skb(newhash, key, NULL, skb);
		if (genhash || memcmp(hash_location, newhash, 16) != 0)
			goto out;
	}
#endif

	if (th->ack)
		seq = FUNC8(th->ack_seq);
	else
		ack_seq = FUNC8(th->seq) + th->syn + th->fin + skb->len -
			  (th->doff << 2);

	if (sk) {
		oif = sk->sk_bound_dev_if;
		if (FUNC12(sk)) {
			const struct ipv6_pinfo *np = FUNC16(sk);

			FUNC23(sk, skb);
			if (np->repflow)
				label = FUNC4(ipv6h);
			priority = sk->sk_priority;
		}
		if (sk->sk_state == TCP_TIME_WAIT) {
			label = FUNC0(FUNC3(sk)->tw_flowlabel);
			priority = FUNC3(sk)->tw_priority;
		}
	} else {
		if (net->ipv6.sysctl.flowlabel_reflect & FLOWLABEL_REFLECT_TCP_RESET)
			label = FUNC4(ipv6h);
	}

	FUNC22(sk, skb, seq, ack_seq, 0, 0, 0, oif, key, 1, 0,
			     label, priority);

#ifdef CONFIG_TCP_MD5SIG
out:
	rcu_read_unlock();
#endif
}