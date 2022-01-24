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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int TCQ_F_NOLOCK ; 
 struct sk_buff* FUNC0 (struct Qdisc*,int*,int*) ; 
 struct net_device* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC2 (struct Qdisc*) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*,int /*<<< orphan*/ *,int) ; 
 struct netdev_queue* FUNC4 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline bool FUNC6(struct Qdisc *q, int *packets)
{
	spinlock_t *root_lock = NULL;
	struct netdev_queue *txq;
	struct net_device *dev;
	struct sk_buff *skb;
	bool validate;

	/* Dequeue packet */
	skb = FUNC0(q, &validate, packets);
	if (FUNC5(!skb))
		return false;

	if (!(q->flags & TCQ_F_NOLOCK))
		root_lock = FUNC2(q);

	dev = FUNC1(q);
	txq = FUNC4(dev, skb);

	return FUNC3(skb, q, dev, txq, root_lock, validate);
}