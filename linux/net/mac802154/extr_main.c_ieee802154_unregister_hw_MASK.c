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
struct ieee802154_local {int /*<<< orphan*/  phy; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  tasklet; } ;
struct ieee802154_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ieee802154_local* FUNC2 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802154_local*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct ieee802154_hw *hw)
{
	struct ieee802154_local *local = FUNC2(hw);

	FUNC6(&local->tasklet);
	FUNC1(local->workqueue);

	FUNC4();

	FUNC3(local);

	FUNC5();

	FUNC0(local->workqueue);
	FUNC7(local->phy);
}