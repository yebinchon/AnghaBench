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
struct sk_buff {unsigned int len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int FUNC2 (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,struct net_device*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct net_device *dev,
		    struct netdev_queue *txq, bool more)
{
	unsigned int len;
	int rc;

	if (FUNC0(dev))
		FUNC1(skb, dev);

	len = skb->len;
	FUNC3(skb, dev);
	rc = FUNC2(skb, dev, txq, more);
	FUNC4(skb, rc, dev, len);

	return rc;
}