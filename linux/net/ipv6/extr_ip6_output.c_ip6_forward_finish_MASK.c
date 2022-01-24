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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ tstamp; scalar_t__ offload_l3_fwd_mark; int /*<<< orphan*/  len; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSTATS_MIB_OUTFORWDATAGRAMS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTOCTETS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 struct dst_entry* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC6(struct net *net, struct sock *sk,
				     struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC5(skb);

	FUNC1(net, FUNC4(dst), IPSTATS_MIB_OUTFORWDATAGRAMS);
	FUNC0(net, FUNC4(dst), IPSTATS_MIB_OUTOCTETS, skb->len);

#ifdef CONFIG_NET_SWITCHDEV
	if (skb->offload_l3_fwd_mark) {
		consume_skb(skb);
		return 0;
	}
#endif

	skb->tstamp = 0;
	return FUNC3(net, sk, skb);
}