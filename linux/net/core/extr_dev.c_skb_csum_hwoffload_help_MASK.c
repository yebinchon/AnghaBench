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
struct sk_buff {int /*<<< orphan*/  csum_not_inet; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int const NETIF_F_CSUM_MASK ; 
 int const NETIF_F_SCTP_CRC ; 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct sk_buff *skb,
			    const netdev_features_t features)
{
	if (FUNC2(skb->csum_not_inet))
		return !!(features & NETIF_F_SCTP_CRC) ? 0 :
			FUNC1(skb);

	return !!(features & NETIF_F_CSUM_MASK) ? 0 : FUNC0(skb);
}