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
struct world {int dummy; } ;
struct objagg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct objagg*) ; 
 int FUNC2 (struct objagg*) ; 
 int /*<<< orphan*/ * action_items ; 
 int /*<<< orphan*/  delta_ops ; 
 struct objagg* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct world*) ; 
 int /*<<< orphan*/  FUNC4 (struct objagg*) ; 
 int FUNC5 (struct world*,struct objagg*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct world world = {};
	struct objagg *objagg;
	int i;
	int err;

	objagg = FUNC3(&delta_ops, NULL, &world);
	if (FUNC1(objagg))
		return FUNC2(objagg);

	for (i = 0; i < FUNC0(action_items); i++) {
		err = FUNC5(&world, objagg,
					     &action_items[i], false);
		if (err)
			goto err_do_action_item;
	}

	FUNC4(objagg);
	return 0;

err_do_action_item:
	for (i--; i >= 0; i--)
		FUNC5(&world, objagg, &action_items[i], true);

	FUNC4(objagg);
	return err;
}