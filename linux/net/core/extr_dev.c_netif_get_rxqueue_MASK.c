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
typedef  int u16 ;
struct sk_buff {struct net_device* dev; } ;
struct netdev_rx_queue {int dummy; } ;
struct net_device {int real_num_rx_queues; int /*<<< orphan*/  name; struct netdev_rx_queue* _rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct netdev_rx_queue *FUNC4(struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	struct netdev_rx_queue *rxqueue;

	rxqueue = dev->_rx;

	if (FUNC2(skb)) {
		u16 index = FUNC1(skb);

		if (FUNC3(index >= dev->real_num_rx_queues)) {
			FUNC0(dev->real_num_rx_queues > 1,
				  "%s received packet on queue %u, but number "
				  "of RX queues is %u\n",
				  dev->name, index, dev->real_num_rx_queues);

			return rxqueue; /* Return first rxqueue */
		}
		rxqueue += index;
	}
	return rxqueue;
}