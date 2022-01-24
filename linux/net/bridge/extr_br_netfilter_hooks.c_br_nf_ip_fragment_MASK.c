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
struct sk_buff {int /*<<< orphan*/  ignore_df; } ;
struct net {int dummy; } ;
struct iphdr {int frag_off; } ;
struct TYPE_2__ {unsigned int frag_max_size; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*,struct sock*,struct sk_buff*,int (*) (struct net*,struct sock*,struct sk_buff*)) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct net *net, struct sock *sk, struct sk_buff *skb,
		  int (*output)(struct net *, struct sock *, struct sk_buff *))
{
	unsigned int mtu = FUNC5(sk, skb);
	struct iphdr *iph = FUNC4(skb);

	if (FUNC7(((iph->frag_off & FUNC2(IP_DF)) && !skb->ignore_df) ||
		     (FUNC0(skb)->frag_max_size &&
		      FUNC0(skb)->frag_max_size > mtu))) {
		FUNC1(net, IPSTATS_MIB_FRAGFAILS);
		FUNC6(skb);
		return -EMSGSIZE;
	}

	return FUNC3(net, sk, skb, output);
}