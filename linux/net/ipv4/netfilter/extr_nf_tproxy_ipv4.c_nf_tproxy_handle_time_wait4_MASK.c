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
struct tcphdr {scalar_t__ dest; int /*<<< orphan*/  source; int /*<<< orphan*/  fin; int /*<<< orphan*/  ack; int /*<<< orphan*/  rst; scalar_t__ syn; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct iphdr {scalar_t__ daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  _hdr ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  NF_TPROXY_LOOKUP_LISTENER ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sock* FUNC5 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcphdr*) ; 

struct sock *
FUNC7(struct net *net, struct sk_buff *skb,
			 __be32 laddr, __be16 lport, struct sock *sk)
{
	const struct iphdr *iph = FUNC3(skb);
	struct tcphdr _hdr, *hp;

	hp = FUNC6(skb, FUNC4(skb), sizeof(_hdr), &_hdr);
	if (hp == NULL) {
		FUNC2(FUNC0(sk));
		return NULL;
	}

	if (hp->syn && !hp->rst && !hp->ack && !hp->fin) {
		/* SYN to a TIME_WAIT socket, we'd rather redirect it
		 * to a listener socket if there's one */
		struct sock *sk2;

		sk2 = FUNC5(net, skb, iph->protocol,
					    iph->saddr, laddr ? laddr : iph->daddr,
					    hp->source, lport ? lport : hp->dest,
					    skb->dev, NF_TPROXY_LOOKUP_LISTENER);
		if (sk2) {
			FUNC1(FUNC0(sk));
			sk = sk2;
		}
	}

	return sk;
}