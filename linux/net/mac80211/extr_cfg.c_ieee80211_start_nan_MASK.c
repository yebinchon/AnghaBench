#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct cfg80211_nan_conf {int dummy; } ;
struct TYPE_4__ {struct cfg80211_nan_conf conf; } ;
struct TYPE_5__ {TYPE_1__ nan; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_3__* local; } ;
struct TYPE_6__ {int /*<<< orphan*/  chanctx_mtx; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (struct wireless_dev*) ; 
 int FUNC1 (TYPE_3__*,struct ieee80211_sub_if_data*,struct cfg80211_nan_conf*) ; 
 int FUNC2 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wireless_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy,
			       struct wireless_dev *wdev,
			       struct cfg80211_nan_conf *conf)
{
	struct ieee80211_sub_if_data *sdata = FUNC0(wdev);
	int ret;

	FUNC5(&sdata->local->chanctx_mtx);
	ret = FUNC2(sdata, NULL, 0, 0);
	FUNC6(&sdata->local->chanctx_mtx);
	if (ret < 0)
		return ret;

	ret = FUNC3(wdev, true);
	if (ret)
		return ret;

	ret = FUNC1(sdata->local, sdata, conf);
	if (ret)
		FUNC4(sdata);

	sdata->u.nan.conf = *conf;

	return ret;
}