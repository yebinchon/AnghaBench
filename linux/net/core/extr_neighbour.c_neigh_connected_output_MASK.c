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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct neighbour {int /*<<< orphan*/  ha; int /*<<< orphan*/  ha_lock; struct net_device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

int FUNC8(struct neighbour *neigh, struct sk_buff *skb)
{
	struct net_device *dev = neigh->dev;
	unsigned int seq;
	int err;

	do {
		FUNC0(skb, FUNC7(skb));
		seq = FUNC5(&neigh->ha_lock);
		err = FUNC1(skb, dev, FUNC4(skb->protocol),
				      neigh->ha, NULL, skb->len);
	} while (FUNC6(&neigh->ha_lock, seq));

	if (err >= 0)
		err = FUNC2(skb);
	else {
		err = -EINVAL;
		FUNC3(skb);
	}
	return err;
}