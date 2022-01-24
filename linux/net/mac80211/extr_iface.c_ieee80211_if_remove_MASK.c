#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ txq; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  wdev; scalar_t__ dev; TYPE_1__ vif; TYPE_2__* local; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  iflist_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

void FUNC11(struct ieee80211_sub_if_data *sdata)
{
	FUNC0();

	FUNC6(&sdata->local->iflist_mtx);
	FUNC5(&sdata->list);
	FUNC7(&sdata->local->iflist_mtx);

	if (sdata->vif.txq)
		FUNC3(sdata->local, FUNC9(sdata->vif.txq));

	FUNC8();

	if (sdata->dev) {
		FUNC10(sdata->dev);
	} else {
		FUNC1(&sdata->wdev);
		FUNC2(sdata);
		FUNC4(sdata);
	}
}