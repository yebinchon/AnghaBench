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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int sender_cpu; struct net_device* dev; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_select_queue ) (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ;} ;
struct net_device {int real_num_tx_queues; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC5(struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	const struct net_device_ops *ops = dev->netdev_ops;
	int cpu = FUNC2();
	u16 queue_index;

#ifdef CONFIG_XPS
	skb->sender_cpu = cpu + 1;
#endif
	FUNC3(skb, cpu % dev->real_num_tx_queues);
	if (ops->ndo_select_queue) {
		queue_index = ops->ndo_select_queue(dev, skb, NULL);
		queue_index = FUNC0(dev, queue_index);
	} else {
		queue_index = FUNC1(dev, skb, NULL);
	}

	return queue_index;
}