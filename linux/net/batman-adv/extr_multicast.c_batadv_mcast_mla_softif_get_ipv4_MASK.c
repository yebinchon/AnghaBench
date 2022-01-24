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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ip_mc_list {int /*<<< orphan*/  multiaddr; int /*<<< orphan*/  next_rcu; } ;
struct in_device {int /*<<< orphan*/  mc_list; } ;
struct hlist_head {int dummy; } ;
struct batadv_mcast_mla_flags {int tvlv_flags; } ;
struct batadv_hw_addr {int /*<<< orphan*/  list; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int BATADV_MCAST_WANT_ALL_IPV4 ; 
 int BATADV_MCAST_WANT_ALL_UNSNOOPABLES ; 
 int BATADV_MCAST_WANT_NO_RTR4 ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct in_device* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct batadv_hw_addr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct ip_mc_list* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct net_device *dev,
				 struct hlist_head *mcast_list,
				 struct batadv_mcast_mla_flags *flags)
{
	struct batadv_hw_addr *new;
	struct in_device *in_dev;
	u8 mcast_addr[ETH_ALEN];
	struct ip_mc_list *pmc;
	int ret = 0;

	if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4)
		return 0;

	FUNC8();

	in_dev = FUNC0(dev);
	if (!in_dev) {
		FUNC9();
		return 0;
	}

	for (pmc = FUNC7(in_dev->mc_list); pmc;
	     pmc = FUNC7(pmc->next_rcu)) {
		if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
		    FUNC5(pmc->multiaddr))
			continue;

		if (!(flags->tvlv_flags & BATADV_MCAST_WANT_NO_RTR4) &&
		    !FUNC5(pmc->multiaddr))
			continue;

		FUNC4(pmc->multiaddr, mcast_addr);

		if (FUNC1(mcast_addr, mcast_list))
			continue;

		new = FUNC6(sizeof(*new), GFP_ATOMIC);
		if (!new) {
			ret = -ENOMEM;
			break;
		}

		FUNC2(new->addr, mcast_addr);
		FUNC3(&new->list, mcast_list);
		ret++;
	}
	FUNC9();

	return ret;
}