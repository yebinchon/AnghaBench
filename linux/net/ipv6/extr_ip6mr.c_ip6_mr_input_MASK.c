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
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  mark; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;
struct mfc6_cache {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_iif; } ;
struct TYPE_4__ {int /*<<< orphan*/  iif; } ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,struct mr_table*,struct net_device*,struct sk_buff*,struct mfc6_cache*) ; 
 struct mfc6_cache* FUNC4 (struct mr_table*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mfc6_cache* FUNC5 (struct mr_table*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct mr_table*,int,struct sk_buff*,struct net_device*) ; 
 int FUNC7 (struct net*,struct flowi6*,struct mr_table**) ; 
 int FUNC8 (struct mr_table*,struct net_device*) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  mrt_lock ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct sk_buff *skb)
{
	struct mfc6_cache *cache;
	struct net *net = FUNC2(skb->dev);
	struct mr_table *mrt;
	struct flowi6 fl6 = {
		.flowi6_iif	= skb->dev->ifindex,
		.flowi6_mark	= skb->mark,
	};
	int err;
	struct net_device *dev;

	/* skb->dev passed in is the master dev for vrfs.
	 * Get the proper interface that does have a vif associated with it.
	 */
	dev = skb->dev;
	if (FUNC11(skb->dev)) {
		dev = FUNC1(net, FUNC0(skb)->iif);
		if (!dev) {
			FUNC10(skb);
			return -ENODEV;
		}
	}

	err = FUNC7(net, &fl6, &mrt);
	if (err < 0) {
		FUNC10(skb);
		return err;
	}

	FUNC12(&mrt_lock);
	cache = FUNC4(mrt,
				 &FUNC9(skb)->saddr, &FUNC9(skb)->daddr);
	if (!cache) {
		int vif = FUNC8(mrt, dev);

		if (vif >= 0)
			cache = FUNC5(mrt,
						     &FUNC9(skb)->daddr,
						     vif);
	}

	/*
	 *	No usable cache entry
	 */
	if (!cache) {
		int vif;

		vif = FUNC8(mrt, dev);
		if (vif >= 0) {
			int err = FUNC6(mrt, vif, skb, dev);
			FUNC13(&mrt_lock);

			return err;
		}
		FUNC13(&mrt_lock);
		FUNC10(skb);
		return -ENODEV;
	}

	FUNC3(net, mrt, dev, skb, cache);

	FUNC13(&mrt_lock);

	return 0;
}