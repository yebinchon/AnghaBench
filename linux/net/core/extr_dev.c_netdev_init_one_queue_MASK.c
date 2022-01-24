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
struct netdev_queue {int xmit_lock_owner; int /*<<< orphan*/  dql; struct net_device* dev; int /*<<< orphan*/  _xmit_lock; } ;
struct net_device {int /*<<< orphan*/  qdisc_xmit_lock_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
				  struct netdev_queue *queue, void *_unused)
{
	/* Initialize queue lock */
	FUNC3(&queue->_xmit_lock);
	FUNC1(&queue->_xmit_lock, &dev->qdisc_xmit_lock_key);
	queue->xmit_lock_owner = -1;
	FUNC2(queue, NUMA_NO_NODE);
	queue->dev = dev;
#ifdef CONFIG_BQL
	dql_init(&queue->dql, HZ);
#endif
}