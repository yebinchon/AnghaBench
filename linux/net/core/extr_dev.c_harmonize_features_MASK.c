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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  dev; } ;
typedef  int netdev_features_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 int NETIF_F_CSUM_MASK ; 
 int NETIF_F_GSO_MASK ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int*) ; 

__attribute__((used)) static netdev_features_t FUNC4(struct sk_buff *skb,
	netdev_features_t features)
{
	int tmp;
	__be16 type;

	type = FUNC3(skb, &tmp);
	features = FUNC2(skb, features, type);

	if (skb->ip_summed != CHECKSUM_NONE &&
	    !FUNC0(features, type)) {
		features &= ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
	}
	if (FUNC1(skb->dev, skb))
		features &= ~NETIF_F_SG;

	return features;
}