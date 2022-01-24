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
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  noack_map; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy,
				  struct net_device *dev,
				  u16 noack_map)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(dev);

	sdata->noack_map = noack_map;

	FUNC1(sdata);

	return 0;
}