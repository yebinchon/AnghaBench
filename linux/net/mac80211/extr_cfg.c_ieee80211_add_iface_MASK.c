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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 struct wireless_dev* FUNC0 (int) ; 
 struct ieee80211_sub_if_data* FUNC1 (struct wireless_dev*) ; 
 int NL80211_IFTYPE_MONITOR ; 
 int FUNC2 (struct ieee80211_local*,char const*,unsigned char,struct wireless_dev**,int,struct vif_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 int FUNC4 (struct ieee80211_sub_if_data*,struct vif_params*) ; 
 struct ieee80211_local* FUNC5 (struct wiphy*) ; 

__attribute__((used)) static struct wireless_dev *FUNC6(struct wiphy *wiphy,
						const char *name,
						unsigned char name_assign_type,
						enum nl80211_iftype type,
						struct vif_params *params)
{
	struct ieee80211_local *local = FUNC5(wiphy);
	struct wireless_dev *wdev;
	struct ieee80211_sub_if_data *sdata;
	int err;

	err = FUNC2(local, name, name_assign_type, &wdev, type, params);
	if (err)
		return FUNC0(err);

	sdata = FUNC1(wdev);

	if (type == NL80211_IFTYPE_MONITOR) {
		err = FUNC4(sdata, params);
		if (err) {
			FUNC3(sdata);
			return NULL;
		}
	}

	return wdev;
}