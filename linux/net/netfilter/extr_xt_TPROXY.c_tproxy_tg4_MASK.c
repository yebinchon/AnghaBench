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
typedef  int u_int32_t ;
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int mark; int /*<<< orphan*/  dev; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  _hdr ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  NF_TPROXY_LOOKUP_ESTABLISHED ; 
 int /*<<< orphan*/  NF_TPROXY_LOOKUP_LISTENER ; 
 scalar_t__ TCP_TIME_WAIT ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sock*) ; 
 struct sock* FUNC3 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC4 (struct net*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct udphdr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int,struct udphdr*) ; 

__attribute__((used)) static unsigned int
FUNC10(struct net *net, struct sk_buff *skb, __be32 laddr, __be16 lport,
	   u_int32_t mark_mask, u_int32_t mark_value)
{
	const struct iphdr *iph = FUNC0(skb);
	struct udphdr _hdr, *hp;
	struct sock *sk;

	hp = FUNC9(skb, FUNC1(skb), sizeof(_hdr), &_hdr);
	if (hp == NULL)
		return NF_DROP;

	/* check if there's an ongoing connection on the packet
	 * addresses, this happens if the redirect already happened
	 * and the current packet belongs to an already established
	 * connection */
	sk = FUNC3(net, skb, iph->protocol,
				   iph->saddr, iph->daddr,
				   hp->source, hp->dest,
				   skb->dev, NF_TPROXY_LOOKUP_ESTABLISHED);

	laddr = FUNC5(skb, laddr, iph->daddr);
	if (!lport)
		lport = hp->dest;

	/* UDP has no TCP_TIME_WAIT state, so we never enter here */
	if (sk && sk->sk_state == TCP_TIME_WAIT)
		/* reopening a TIME_WAIT connection needs special handling */
		sk = FUNC4(net, skb, laddr, lport, sk);
	else if (!sk)
		/* no, there's no established connection, check if
		 * there's a listener on the redirected addr/port */
		sk = FUNC3(net, skb, iph->protocol,
					   iph->saddr, laddr,
					   hp->source, lport,
					   skb->dev, NF_TPROXY_LOOKUP_LISTENER);

	/* NOTE: assign_sock consumes our sk reference */
	if (sk && FUNC6(sk)) {
		/* This should be in a separate target, but we don't do multiple
		   targets on the same rule yet */
		skb->mark = (skb->mark & ~mark_mask) ^ mark_value;

		FUNC8("redirecting: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\n",
			 iph->protocol, &iph->daddr, FUNC7(hp->dest),
			 &laddr, FUNC7(lport), skb->mark);

		FUNC2(skb, sk);
		return NF_ACCEPT;
	}

	FUNC8("no socket, dropping: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\n",
		 iph->protocol, &iph->saddr, FUNC7(hp->source),
		 &iph->daddr, FUNC7(hp->dest), skb->mark);
	return NF_DROP;
}