#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct udp_table {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_uid; int /*<<< orphan*/  sk_mark; } ;
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {struct in6_addr daddr; struct in6_addr saddr; } ;
struct ipv6_pinfo {scalar_t__ pmtudisc; int /*<<< orphan*/  recverr; } ;
struct inet6_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_INERRORS ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 scalar_t__ IPV6_PMTUDISC_DONT ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  NDISC_REDIRECT ; 
 int FUNC2 (struct sock*) ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (struct net*,struct ipv6hdr const*,int,struct udphdr*,struct udp_table*,struct sk_buff*,struct inet6_skb_parm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC6 (struct net*,struct in6_addr const*,int /*<<< orphan*/ ,struct in6_addr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*,int /*<<< orphan*/ *) ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct ipv6_pinfo* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  udpv6_encap_needed_key ; 

int FUNC21(struct sk_buff *skb, struct inet6_skb_parm *opt,
		   u8 type, u8 code, int offset, __be32 info,
		   struct udp_table *udptable)
{
	struct ipv6_pinfo *np;
	const struct ipv6hdr *hdr = (const struct ipv6hdr *)skb->data;
	const struct in6_addr *saddr = &hdr->saddr;
	const struct in6_addr *daddr = &hdr->daddr;
	struct udphdr *uh = (struct udphdr *)(skb->data+offset);
	bool tunnel = false;
	struct sock *sk;
	int harderr;
	int err;
	struct net *net = FUNC7(skb->dev);

	sk = FUNC6(net, daddr, uh->dest, saddr, uh->source,
			       FUNC9(skb), FUNC10(skb), udptable, NULL);
	if (!sk) {
		/* No socket for error: try tunnels before discarding */
		sk = FUNC0(-ENOENT);
		if (FUNC19(&udpv6_encap_needed_key)) {
			sk = FUNC5(net, hdr, offset, uh,
						  udptable, skb,
						  opt, type, code, info);
			if (!sk)
				return 0;
		}

		if (FUNC1(sk)) {
			FUNC3(net, FUNC4(skb->dev),
					  ICMP6_MIB_INERRORS);
			return FUNC2(sk);
		}

		tunnel = true;
	}

	harderr = FUNC8(type, code, &err);
	np = FUNC11(sk);

	if (type == ICMPV6_PKT_TOOBIG) {
		if (!FUNC13(sk))
			goto out;
		FUNC15(skb, sk, info);
		if (np->pmtudisc != IPV6_PMTUDISC_DONT)
			harderr = 1;
	}
	if (type == NDISC_REDIRECT) {
		if (tunnel) {
			FUNC12(skb, FUNC18(sk), FUNC9(skb),
				     sk->sk_mark, sk->sk_uid);
		} else {
			FUNC14(skb, sk);
		}
		goto out;
	}

	/* Tunnels don't have an application socket: don't pass errors back */
	if (tunnel)
		goto out;

	if (!np->recverr) {
		if (!harderr || sk->sk_state != TCP_ESTABLISHED)
			goto out;
	} else {
		FUNC16(sk, skb, err, uh->dest, FUNC17(info), (u8 *)(uh+1));
	}

	sk->sk_err = err;
	sk->sk_error_report(sk);
out:
	return 0;
}