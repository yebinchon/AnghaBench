#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; } ;
struct net_device {TYPE_1__* header_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  hh_len; } ;
struct neighbour {int /*<<< orphan*/  ha; int /*<<< orphan*/  ha_lock; TYPE_2__ hh; struct net_device* dev; } ;
struct TYPE_3__ {scalar_t__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct neighbour*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

int FUNC10(struct neighbour *neigh, struct sk_buff *skb)
{
	int rc = 0;

	if (!FUNC4(neigh, skb)) {
		int err;
		struct net_device *dev = neigh->dev;
		unsigned int seq;

		if (dev->header_ops->cache && !neigh->hh.hh_len)
			FUNC5(neigh);

		do {
			FUNC0(skb, FUNC9(skb));
			seq = FUNC7(&neigh->ha_lock);
			err = FUNC1(skb, dev, FUNC6(skb->protocol),
					      neigh->ha, NULL, skb->len);
		} while (FUNC8(&neigh->ha_lock, seq));

		if (err >= 0)
			rc = FUNC2(skb);
		else
			goto out_kfree_skb;
	}
out:
	return rc;
out_kfree_skb:
	rc = -EINVAL;
	FUNC3(skb);
	goto out;
}