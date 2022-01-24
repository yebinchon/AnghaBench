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
struct sk_buff {int /*<<< orphan*/  vlan_proto; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 struct sk_buff* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *dev,
			      struct netdev_queue *txq)
{
	int status = NETDEV_TX_OK;
	netdev_features_t features;

	features = FUNC2(skb);

	if (FUNC3(skb) &&
	    !FUNC5(features, skb->vlan_proto)) {
		skb = FUNC0(skb);
		if (FUNC4(!skb)) {
			/* This is actually a packet drop, but we
			 * don't want the code that calls this
			 * function to try and operate on a NULL skb.
			 */
			goto out;
		}
	}

	status = FUNC1(skb, dev, txq, false);

out:
	return status;
}