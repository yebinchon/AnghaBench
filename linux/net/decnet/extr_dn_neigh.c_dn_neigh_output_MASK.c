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
struct dst_entry {int dummy; } ;
struct dn_route {int /*<<< orphan*/  rt_local_src; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 int FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 struct dst_entry* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct neighbour *neigh, struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC7(skb);
	struct dn_route *rt = (struct dn_route *)dst;
	struct net_device *dev = neigh->dev;
	char mac_addr[ETH_ALEN];
	unsigned int seq;
	int err;

	FUNC2(mac_addr, rt->rt_local_src);
	do {
		seq = FUNC5(&neigh->ha_lock);
		err = FUNC0(skb, dev, FUNC4(skb->protocol),
				      neigh->ha, mac_addr, skb->len);
	} while (FUNC6(&neigh->ha_lock, seq));

	if (err >= 0)
		err = FUNC1(skb);
	else {
		FUNC3(skb);
		err = -EINVAL;
	}
	return err;
}