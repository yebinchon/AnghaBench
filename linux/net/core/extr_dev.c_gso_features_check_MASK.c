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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ encapsulation; } ;
struct net_device {scalar_t__ gso_max_segs; int gso_partial_features; } ;
struct iphdr {int frag_off; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {scalar_t__ gso_segs; int gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_DF ; 
 int NETIF_F_GSO_MASK ; 
 int NETIF_F_TSO_MANGLEID ; 
 int SKB_GSO_PARTIAL ; 
 int SKB_GSO_TCPV4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC1 (struct sk_buff const*) ; 
 struct iphdr* FUNC2 (struct sk_buff const*) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static netdev_features_t FUNC4(const struct sk_buff *skb,
					    struct net_device *dev,
					    netdev_features_t features)
{
	u16 gso_segs = FUNC3(skb)->gso_segs;

	if (gso_segs > dev->gso_max_segs)
		return features & ~NETIF_F_GSO_MASK;

	/* Support for GSO partial features requires software
	 * intervention before we can actually process the packets
	 * so we need to strip support for any partial features now
	 * and we can pull them back in after we have partially
	 * segmented the frame.
	 */
	if (!(FUNC3(skb)->gso_type & SKB_GSO_PARTIAL))
		features &= ~dev->gso_partial_features;

	/* Make sure to clear the IPv4 ID mangling feature if the
	 * IPv4 header has the potential to be fragmented.
	 */
	if (FUNC3(skb)->gso_type & SKB_GSO_TCPV4) {
		struct iphdr *iph = skb->encapsulation ?
				    FUNC1(skb) : FUNC2(skb);

		if (!(iph->frag_off & FUNC0(IP_DF)))
			features &= ~NETIF_F_TSO_MANGLEID;
	}

	return features;
}