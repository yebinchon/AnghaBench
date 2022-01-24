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
struct sk_buff {int dummy; } ;
struct ipv6_sr_hdr {int segments_left; struct in6_addr* segments; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	struct ipv6_sr_hdr *hdr;
	struct in6_addr *addr;
	__be32 from, to;

	/* srh is at transport offset and seg_left is already decremented
	 * but daddr is not yet updated with next segment
	 */

	hdr = (struct ipv6_sr_hdr *)FUNC1(skb);
	addr = hdr->segments + hdr->segments_left;

	hdr->segments_left++;
	from = *(__be32 *)hdr;

	hdr->segments_left--;
	to = *(__be32 *)hdr;

	/* update skb csum with diff resulting from seg_left decrement */

	FUNC3(skb, from, to);

	/* compute csum diff between current and next segment and update */

	FUNC2(skb, (__be32 *)(&FUNC0(skb)->daddr),
			   (__be32 *)addr);
}