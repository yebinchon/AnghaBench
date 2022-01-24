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
struct switchdev_deferred_item {int /*<<< orphan*/  dev; int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct switchdev_deferred_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct switchdev_deferred_item* FUNC4 () ; 

void FUNC5(void)
{
	struct switchdev_deferred_item *dfitem;

	FUNC0();

	while ((dfitem = FUNC4())) {
		dfitem->func(dfitem->dev, dfitem->data);
		FUNC1(dfitem->dev);
		FUNC2(dfitem);
	}
}