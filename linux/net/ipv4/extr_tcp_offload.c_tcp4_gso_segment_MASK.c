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
struct tcphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;
struct TYPE_2__ {int gso_type; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  EINVAL ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct sk_buff *skb,
					netdev_features_t features)
{
	if (!(FUNC4(skb)->gso_type & SKB_GSO_TCPV4))
		return FUNC0(-EINVAL);

	if (!FUNC3(skb, sizeof(struct tcphdr)))
		return FUNC0(-EINVAL);

	if (FUNC7(skb->ip_summed != CHECKSUM_PARTIAL)) {
		const struct iphdr *iph = FUNC2(skb);
		struct tcphdr *th = FUNC6(skb);

		/* Set up checksum pseudo header, usually expect stack to
		 * have done this already.
		 */

		th->check = 0;
		skb->ip_summed = CHECKSUM_PARTIAL;
		FUNC1(skb, iph->saddr, iph->daddr);
	}

	return FUNC5(skb, features);
}