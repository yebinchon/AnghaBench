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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int /*<<< orphan*/  primary_key; int /*<<< orphan*/  tbl; } ;
struct dst_entry {struct net_device* dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 int MAX_ADDR_LEN ; 
 int FUNC1 (struct neighbour*) ; 
 struct neighbour* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC3 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC4 (struct dst_entry*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct neighbour*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct neighbour*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *skb, struct sk_buff *skb_res,
	       struct net_device *dev, struct netdev_queue *txq,
	       struct dst_entry *dst)
{
	struct neighbour *n;
	int err = 0;

	n = FUNC4(dst, skb);
	if (!n)
		return -ENOENT;

	if (dst->dev != dev) {
		struct neighbour *mn;

		mn = FUNC2(n->tbl, n->primary_key, dev);
		FUNC7(n);
		if (FUNC0(mn))
			return FUNC1(mn);
		n = mn;
	}

	if (FUNC5(n, skb_res) == 0) {
		int err;
		char haddr[MAX_ADDR_LEN];

		FUNC6(haddr, n, dev);
		err = FUNC3(skb, dev, FUNC8(FUNC9(skb)),
				      haddr, NULL, skb->len);

		if (err < 0)
			err = -EINVAL;
	} else {
		err = (skb_res == NULL) ? -EAGAIN : 1;
	}
	FUNC7(n);
	return err;
}