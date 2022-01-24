#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int /*<<< orphan*/  mroute_sk; } ;
struct mfc_cache {int dummy; } ;
struct TYPE_5__ {scalar_t__ router_alert; } ;
struct TYPE_8__ {int flags; TYPE_1__ opt; int /*<<< orphan*/  iif; } ;
struct TYPE_7__ {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {int rt_flags; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IPPROTO_IGMP ; 
 int IPSKB_FORWARDED ; 
 scalar_t__ FUNC1 (struct mr_table*) ; 
 int FUNC2 (struct mr_table*) ; 
 int RTCF_LOCAL ; 
 struct net_device* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net*,struct mr_table*,struct net_device*,struct sk_buff*,struct mfc_cache*,int) ; 
 struct mfc_cache* FUNC9 (struct mr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mfc_cache* FUNC10 (struct mr_table*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct mr_table*,int,struct sk_buff*,struct net_device*) ; 
 int FUNC12 (struct mr_table*,struct net_device*) ; 
 struct mr_table* FUNC13 (struct net*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  mrt_lock ; 
 scalar_t__ FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,struct sk_buff*) ; 
 struct sock* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC22 (struct sk_buff*) ; 

int FUNC23(struct sk_buff *skb)
{
	struct mfc_cache *cache;
	struct net *net = FUNC4(skb->dev);
	int local = FUNC22(skb)->rt_flags & RTCF_LOCAL;
	struct mr_table *mrt;
	struct net_device *dev;

	/* skb->dev passed in is the loX master dev for vrfs.
	 * As there are no vifs associated with loopback devices,
	 * get the proper interface that does have a vif associated with it.
	 */
	dev = skb->dev;
	if (FUNC15(skb->dev)) {
		dev = FUNC3(net, FUNC0(skb)->iif);
		if (!dev) {
			FUNC14(skb);
			return -ENODEV;
		}
	}

	/* Packet is looped back after forward, it should not be
	 * forwarded second time, but still can be delivered locally.
	 */
	if (FUNC0(skb)->flags & IPSKB_FORWARDED)
		goto dont_forward;

	mrt = FUNC13(net, skb);
	if (FUNC1(mrt)) {
		FUNC14(skb);
		return FUNC2(mrt);
	}
	if (!local) {
		if (FUNC0(skb)->opt.router_alert) {
			if (FUNC5(skb))
				return 0;
		} else if (FUNC6(skb)->protocol == IPPROTO_IGMP) {
			/* IGMPv1 (and broken IGMPv2 implementations sort of
			 * Cisco IOS <= 11.2(8)) do not put router alert
			 * option to IGMP packets destined to routable
			 * groups. It is very bad, because it means
			 * that we can forward NO IGMP messages.
			 */
			struct sock *mroute_sk;

			mroute_sk = FUNC18(mrt->mroute_sk);
			if (mroute_sk) {
				FUNC16(skb);
				FUNC17(mroute_sk, skb);
				return 0;
			}
		    }
	}

	/* already under rcu_read_lock() */
	cache = FUNC9(mrt, FUNC6(skb)->saddr, FUNC6(skb)->daddr);
	if (!cache) {
		int vif = FUNC12(mrt, dev);

		if (vif >= 0)
			cache = FUNC10(mrt, FUNC6(skb)->daddr,
						    vif);
	}

	/* No usable cache entry */
	if (!cache) {
		int vif;

		if (local) {
			struct sk_buff *skb2 = FUNC21(skb, GFP_ATOMIC);
			FUNC7(skb);
			if (!skb2)
				return -ENOBUFS;
			skb = skb2;
		}

		FUNC19(&mrt_lock);
		vif = FUNC12(mrt, dev);
		if (vif >= 0) {
			int err2 = FUNC11(mrt, vif, skb, dev);
			FUNC20(&mrt_lock);

			return err2;
		}
		FUNC20(&mrt_lock);
		FUNC14(skb);
		return -ENODEV;
	}

	FUNC19(&mrt_lock);
	FUNC8(net, mrt, dev, skb, cache, local);
	FUNC20(&mrt_lock);

	if (local)
		return FUNC7(skb);

	return 0;

dont_forward:
	if (local)
		return FUNC7(skb);
	FUNC14(skb);
	return 0;
}