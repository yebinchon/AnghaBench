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
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net*,struct sock*,struct sk_buff*,int (*) (struct net*,struct sock*,struct sk_buff*)) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct sock *sk, struct sk_buff *skb,
		       unsigned int mtu,
		       int (*output)(struct net *, struct sock *, struct sk_buff *))
{
	struct iphdr *iph = FUNC6(skb);

	if ((iph->frag_off & FUNC3(IP_DF)) == 0)
		return FUNC5(net, sk, skb, output);

	if (FUNC8(!skb->ignore_df ||
		     (FUNC0(skb)->frag_max_size &&
		      FUNC0(skb)->frag_max_size > mtu))) {
		FUNC1(net, IPSTATS_MIB_FRAGFAILS);
		FUNC4(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
			  FUNC2(mtu));
		FUNC7(skb);
		return -EMSGSIZE;
	}

	return FUNC5(net, sk, skb, output);
}