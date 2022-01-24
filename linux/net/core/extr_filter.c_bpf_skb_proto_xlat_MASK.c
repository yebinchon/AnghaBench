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
struct sk_buff {scalar_t__ protocol; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, __be16 to_proto)
{
	__be16 from_proto = skb->protocol;

	if (from_proto == FUNC2(ETH_P_IP) &&
	      to_proto == FUNC2(ETH_P_IPV6))
		return FUNC0(skb);

	if (from_proto == FUNC2(ETH_P_IPV6) &&
	      to_proto == FUNC2(ETH_P_IP))
		return FUNC1(skb);

	return -ENOTSUPP;
}