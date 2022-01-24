#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;
struct fib_result {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct in_device*) ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct in_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,int) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,struct fib_result*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 

int FUNC9(struct sk_buff *skb, __be32 daddr, __be32 saddr,
		       u8 tos, struct net_device *dev, struct fib_result *res)
{
	/* Multicast recognition logic is moved from route cache to here.
	   The problem was that too many Ethernet cards have broken/missing
	   hardware multicast filters :-( As result the host on multicasting
	   network acquires a lot of useless route cache entries, sort of
	   SDR messages from all the world. Now we try to get rid of them.
	   Really, provided software IP multicast filter is organized
	   reasonably (at least, hashed), it does not result in a slowdown
	   comparing with route cache reject entries.
	   Note, that multicast routers are not affected, because
	   route cache entry is created eventually.
	 */
	if (FUNC7(daddr)) {
		struct in_device *in_dev = FUNC1(dev);
		int our = 0;
		int err = -EINVAL;

		if (!in_dev)
			return err;
		our = FUNC2(in_dev, daddr, saddr,
				      FUNC3(skb)->protocol);

		/* check l3 master if no match yet */
		if (!our && FUNC8(dev)) {
			struct in_device *l3_in_dev;

			l3_in_dev = FUNC1(skb->dev);
			if (l3_in_dev)
				our = FUNC2(l3_in_dev, daddr, saddr,
						      FUNC3(skb)->protocol);
		}

		if (our
#ifdef CONFIG_IP_MROUTE
			||
		    (!ipv4_is_local_multicast(daddr) &&
		     IN_DEV_MFORWARD(in_dev))
#endif
		   ) {
			err = FUNC4(skb, daddr, saddr,
						tos, dev, our);
		}
		return err;
	}

	return FUNC5(skb, daddr, saddr, tos, dev, res);
}