#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_mark; int /*<<< orphan*/  sk_priority; int /*<<< orphan*/  sk_protocol; } ;
struct sk_buff {int /*<<< orphan*/  sk; scalar_t__ mark; int /*<<< orphan*/  priority; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; scalar_t__ frag_off; scalar_t__ id; int /*<<< orphan*/  protocol; void* saddr; void* daddr; int /*<<< orphan*/  ttl; int /*<<< orphan*/  tos; } ;
struct TYPE_2__ {int optlen; void* faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_sock {int /*<<< orphan*/  tos; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct iphdr*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC2 (struct sock const*) ; 
 scalar_t__ FUNC3 (struct sock const*,int /*<<< orphan*/ *) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,TYPE_1__*,void*,struct rtable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inet_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct rtable* FUNC10 (struct sk_buff*) ; 
 struct net* FUNC11 (struct sock const*) ; 

int FUNC12(struct sk_buff *skb, const struct sock *sk,
			  __be32 saddr, __be32 daddr, struct ip_options_rcu *opt)
{
	struct inet_sock *inet = FUNC2(sk);
	struct rtable *rt = FUNC10(skb);
	struct net *net = FUNC11(sk);
	struct iphdr *iph;

	/* Build the IP header. */
	FUNC8(skb, sizeof(struct iphdr) + (opt ? opt->opt.optlen : 0));
	FUNC9(skb);
	iph = FUNC4(skb);
	iph->version  = 4;
	iph->ihl      = 5;
	iph->tos      = inet->tos;
	iph->ttl      = FUNC7(inet, &rt->dst);
	iph->daddr    = (opt && opt->opt.srr ? opt->opt.faddr : daddr);
	iph->saddr    = saddr;
	iph->protocol = sk->sk_protocol;
	if (FUNC3(sk, &rt->dst)) {
		iph->frag_off = FUNC1(IP_DF);
		iph->id = 0;
	} else {
		iph->frag_off = 0;
		FUNC0(net, iph, 1);
	}

	if (opt && opt->opt.optlen) {
		iph->ihl += opt->opt.optlen>>2;
		FUNC6(skb, &opt->opt, daddr, rt, 0);
	}

	skb->priority = sk->sk_priority;
	if (!skb->mark)
		skb->mark = sk->sk_mark;

	/* Send it out. */
	return FUNC5(net, skb->sk, skb);
}