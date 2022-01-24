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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ tstamp; scalar_t__ offload_l3_fwd_mark; int /*<<< orphan*/  len; } ;
struct net {int dummy; } ;
struct ip_options {int /*<<< orphan*/  optlen; } ;
struct TYPE_2__ {struct ip_options opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTFORWDATAGRAMS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTOCTETS ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct ip_options *opt	= &(FUNC0(skb)->opt);

	FUNC2(net, IPSTATS_MIB_OUTFORWDATAGRAMS);
	FUNC1(net, IPSTATS_MIB_OUTOCTETS, skb->len);

#ifdef CONFIG_NET_SWITCHDEV
	if (skb->offload_l3_fwd_mark) {
		consume_skb(skb);
		return 0;
	}
#endif

	if (FUNC6(opt->optlen))
		FUNC5(skb);

	skb->tstamp = 0;
	return FUNC4(net, sk, skb);
}