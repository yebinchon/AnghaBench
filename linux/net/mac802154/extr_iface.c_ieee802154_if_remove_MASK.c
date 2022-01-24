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
struct ieee802154_sub_if_data {int /*<<< orphan*/  dev; TYPE_1__* local; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  iflist_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct ieee802154_sub_if_data *sdata)
{
	FUNC0();

	FUNC2(&sdata->local->iflist_mtx);
	FUNC1(&sdata->list);
	FUNC3(&sdata->local->iflist_mtx);

	FUNC4();
	FUNC5(sdata->dev);
}