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
struct tcphdr {scalar_t__ const dest; int /*<<< orphan*/  source; int /*<<< orphan*/  fin; int /*<<< orphan*/  ack; int /*<<< orphan*/  rst; scalar_t__ syn; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  _hdr ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  NF_TPROXY_LOOKUP_LISTENER ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff*) ; 
 struct sock* FUNC4 (struct net*,struct sk_buff*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct in6_addr const*,int /*<<< orphan*/ *) ; 
 struct tcphdr* FUNC6 (struct sk_buff*,int,int,struct tcphdr*) ; 

struct sock *
FUNC7(struct sk_buff *skb, int tproto, int thoff,
			 struct net *net,
			 const struct in6_addr *laddr,
			 const __be16 lport,
			 struct sock *sk)
{
	const struct ipv6hdr *iph = FUNC3(skb);
	struct tcphdr _hdr, *hp;

	hp = FUNC6(skb, thoff, sizeof(_hdr), &_hdr);
	if (hp == NULL) {
		FUNC2(FUNC0(sk));
		return NULL;
	}

	if (hp->syn && !hp->rst && !hp->ack && !hp->fin) {
		/* SYN to a TIME_WAIT socket, we'd rather redirect it
		 * to a listener socket if there's one */
		struct sock *sk2;

		sk2 = FUNC4(net, skb, thoff, tproto,
					    &iph->saddr,
					    FUNC5(skb, laddr, &iph->daddr),
					    hp->source,
					    lport ? lport : hp->dest,
					    skb->dev, NF_TPROXY_LOOKUP_LISTENER);
		if (sk2) {
			FUNC1(FUNC0(sk));
			sk = sk2;
		}
	}

	return sk;
}