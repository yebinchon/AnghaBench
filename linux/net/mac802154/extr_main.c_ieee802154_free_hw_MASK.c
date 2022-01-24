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
struct ieee802154_local {int /*<<< orphan*/  phy; int /*<<< orphan*/  iflist_mtx; int /*<<< orphan*/  interfaces; } ;
struct ieee802154_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee802154_local* FUNC1 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee802154_hw *hw)
{
	struct ieee802154_local *local = FUNC1(hw);

	FUNC0(!FUNC2(&local->interfaces));

	FUNC3(&local->iflist_mtx);

	FUNC4(local->phy);
}