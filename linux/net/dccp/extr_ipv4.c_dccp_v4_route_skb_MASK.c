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
struct sock {int /*<<< orphan*/  sk_protocol; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct flowi4 {int /*<<< orphan*/  fl4_dport; int /*<<< orphan*/  fl4_sport; int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_oif; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccph_sport; int /*<<< orphan*/  dccph_dport; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi4*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 struct rtable* FUNC7 (struct net*,struct flowi4*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dst_entry* FUNC9(struct net *net, struct sock *sk,
					   struct sk_buff *skb)
{
	struct rtable *rt;
	const struct iphdr *iph = FUNC6(skb);
	struct flowi4 fl4 = {
		.flowi4_oif = FUNC5(skb),
		.daddr = iph->saddr,
		.saddr = iph->daddr,
		.flowi4_tos = FUNC2(sk),
		.flowi4_proto = sk->sk_protocol,
		.fl4_sport = FUNC3(skb)->dccph_dport,
		.fl4_dport = FUNC3(skb)->dccph_sport,
	};

	FUNC8(skb, FUNC4(&fl4));
	rt = FUNC7(net, &fl4, sk);
	if (FUNC1(rt)) {
		FUNC0(net, IPSTATS_MIB_OUTNOROUTES);
		return NULL;
	}

	return &rt->dst;
}