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
struct udphdr {int dummy; } ;
struct skb_shared_info {int gso_type; unsigned int gso_size; } ;
struct sk_buff {scalar_t__ encapsulation; } ;
struct sctphdr {int dummy; } ;

/* Variables and functions */
 int SKB_GSO_TCPV4 ; 
 int SKB_GSO_TCPV6 ; 
 int SKB_GSO_UDP_L4 ; 
 scalar_t__ FUNC0 (struct sk_buff const*) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff const*) ; 
 struct skb_shared_info* FUNC4 (struct sk_buff const*) ; 
 unsigned int FUNC5 (struct sk_buff const*) ; 
 unsigned int FUNC6 (struct sk_buff const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC8(const struct sk_buff *skb)
{
	const struct skb_shared_info *shinfo = FUNC4(skb);
	unsigned int thlen = 0;

	if (skb->encapsulation) {
		thlen = FUNC2(skb) -
			FUNC5(skb);

		if (FUNC1(shinfo->gso_type & (SKB_GSO_TCPV4 | SKB_GSO_TCPV6)))
			thlen += FUNC0(skb);
	} else if (FUNC1(shinfo->gso_type & (SKB_GSO_TCPV4 | SKB_GSO_TCPV6))) {
		thlen = FUNC6(skb);
	} else if (FUNC7(FUNC3(skb))) {
		thlen = sizeof(struct sctphdr);
	} else if (shinfo->gso_type & SKB_GSO_UDP_L4) {
		thlen = sizeof(struct udphdr);
	}
	/* UFO sets gso_size to the size of the fragmentation
	 * payload, i.e. the size of the L4 (UDP) header is already
	 * accounted for.
	 */
	return thlen + shinfo->gso_size;
}