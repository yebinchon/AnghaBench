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
struct ieee80211_sub_if_data {int /*<<< orphan*/  vif; scalar_t__ fragment_next; TYPE_1__* fragments; } ;
struct TYPE_2__ {int /*<<< orphan*/  skb_list; } ;

/* Variables and functions */
 int IEEE80211_FRAGMENT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_sub_if_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_sub_if_data *sdata)
{
	int i;

	/* free extra data */
	FUNC2(sdata, false);

	FUNC1(sdata);

	for (i = 0; i < IEEE80211_FRAGMENT_MAX; i++)
		FUNC0(&sdata->fragments[i].skb_list);
	sdata->fragment_next = 0;

	if (FUNC4(&sdata->vif))
		FUNC3(sdata);
}