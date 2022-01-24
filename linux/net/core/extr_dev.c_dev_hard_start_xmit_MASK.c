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
struct sk_buff {struct sk_buff* next; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct sk_buff*,struct net_device*,struct netdev_queue*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC5(struct sk_buff *first, struct net_device *dev,
				    struct netdev_queue *txq, int *ret)
{
	struct sk_buff *skb = first;
	int rc = NETDEV_TX_OK;

	while (skb) {
		struct sk_buff *next = skb->next;

		FUNC2(skb);
		rc = FUNC4(skb, dev, txq, next != NULL);
		if (FUNC3(!FUNC0(rc))) {
			skb->next = next;
			goto out;
		}

		skb = next;
		if (FUNC1(txq) && skb) {
			rc = NETDEV_TX_BUSY;
			break;
		}
	}

out:
	*ret = rc;
	return skb;
}