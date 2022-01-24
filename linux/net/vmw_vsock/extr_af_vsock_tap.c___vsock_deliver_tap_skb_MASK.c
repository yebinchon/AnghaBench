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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				   struct net_device *dev)
{
	int ret = 0;
	struct sk_buff *nskb = FUNC4(skb, GFP_ATOMIC);

	if (nskb) {
		FUNC0(dev);

		nskb->dev = dev;
		ret = FUNC2(nskb);
		if (FUNC5(ret > 0))
			ret = FUNC3(ret);

		FUNC1(dev);
	}

	return ret;
}