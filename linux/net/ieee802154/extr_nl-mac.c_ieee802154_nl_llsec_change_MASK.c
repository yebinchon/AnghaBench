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
typedef  struct net_device net_device ;
struct genl_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  llsec; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct genl_info*) ; 

__attribute__((used)) static int
FUNC3(struct sk_buff *skb, struct genl_info *info,
			   int (*fn)(struct net_device*, struct genl_info*))
{
	struct net_device *dev = NULL;
	int rc = -EINVAL;

	dev = FUNC2(info);
	if (!dev)
		return -ENODEV;

	if (!FUNC1(dev)->llsec)
		rc = -EOPNOTSUPP;
	else
		rc = fn(dev, info);

	FUNC0(dev);
	return rc;
}