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
struct ieee802154_local {int started; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee802154_local*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee802154_local*) ; 

__attribute__((used)) static inline void FUNC7(struct ieee802154_local *local)
{
	FUNC1();

	FUNC6(local);
	local->ops->stop(&local->hw);
	FUNC5(local);

	/* sync away all work on the tasklet before clearing started */
	FUNC3(&local->tasklet);
	FUNC4(&local->tasklet);

	FUNC0();

	local->started = false;
}