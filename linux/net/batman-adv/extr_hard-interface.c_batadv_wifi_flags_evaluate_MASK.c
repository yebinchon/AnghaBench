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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_HARDIF_WIFI_CFG80211_DIRECT ; 
 int /*<<< orphan*/  BATADV_HARDIF_WIFI_CFG80211_INDIRECT ; 
 int /*<<< orphan*/  BATADV_HARDIF_WIFI_WEXT_DIRECT ; 
 int /*<<< orphan*/  BATADV_HARDIF_WIFI_WEXT_INDIRECT ; 
 struct net_device* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC4(struct net_device *net_device)
{
	u32 wifi_flags = 0;
	struct net_device *real_netdev;

	if (FUNC2(net_device))
		wifi_flags |= BATADV_HARDIF_WIFI_WEXT_DIRECT;

	if (FUNC1(net_device))
		wifi_flags |= BATADV_HARDIF_WIFI_CFG80211_DIRECT;

	real_netdev = FUNC0(net_device);
	if (!real_netdev)
		return wifi_flags;

	if (real_netdev == net_device)
		goto out;

	if (FUNC2(real_netdev))
		wifi_flags |= BATADV_HARDIF_WIFI_WEXT_INDIRECT;

	if (FUNC1(real_netdev))
		wifi_flags |= BATADV_HARDIF_WIFI_CFG80211_INDIRECT;

out:
	FUNC3(real_netdev);
	return wifi_flags;
}