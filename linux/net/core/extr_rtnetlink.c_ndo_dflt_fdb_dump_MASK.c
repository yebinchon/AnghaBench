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
struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct net_device {scalar_t__ type; int /*<<< orphan*/  mc; int /*<<< orphan*/  uc; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sk_buff*,struct netlink_callback*,struct net_device*,int*,int /*<<< orphan*/ *) ; 

int FUNC3(struct sk_buff *skb,
		      struct netlink_callback *cb,
		      struct net_device *dev,
		      struct net_device *filter_dev,
		      int *idx)
{
	int err;

	if (dev->type != ARPHRD_ETHER)
		return -EINVAL;

	FUNC0(dev);
	err = FUNC2(skb, cb, dev, idx, &dev->uc);
	if (err)
		goto out;
	err = FUNC2(skb, cb, dev, idx, &dev->mc);
out:
	FUNC1(dev);
	return err;
}