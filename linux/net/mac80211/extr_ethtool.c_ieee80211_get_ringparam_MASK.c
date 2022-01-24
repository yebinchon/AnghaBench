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
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct ieee80211_local {int dummy; } ;
struct ethtool_ringparam {int /*<<< orphan*/  rx_max_pending; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  tx_max_pending; int /*<<< orphan*/  tx_pending; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_local*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_ringparam*,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_local* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				    struct ethtool_ringparam *rp)
{
	struct ieee80211_local *local = FUNC2(dev->ieee80211_ptr->wiphy);

	FUNC1(rp, 0, sizeof(*rp));

	FUNC0(local, &rp->tx_pending, &rp->tx_max_pending,
			  &rp->rx_pending, &rp->rx_max_pending);
}