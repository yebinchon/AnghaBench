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
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ip6_tnl {TYPE_1__ parms; } ;

/* Variables and functions */
 int FUNC0 (struct ipv6hdr const*,struct sk_buff*) ; 
 int IP6_TNL_F_RCV_DSCP_COPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6hdr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(const struct ip6_tnl *t,
				       const struct ipv6hdr *ipv6h,
				       struct sk_buff *skb)
{
	if (t->parms.flags & IP6_TNL_F_RCV_DSCP_COPY)
		FUNC1(FUNC2(ipv6h), FUNC3(skb));

	return FUNC0(ipv6h, skb);
}