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
 scalar_t__ FUNC0 (struct objagg*) ; 
 int NUM_KEYS ; 
 int FUNC1 (struct objagg*) ; 
 int FUNC2 (struct objagg*) ; 
 int FUNC3 (struct objagg*) ; 
 int /*<<< orphan*/  nodelta_ops ; 
 struct objagg* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct world*) ; 
 int /*<<< orphan*/  FUNC5 (struct objagg*) ; 
 int FUNC6 (struct world*,struct objagg*,int,int) ; 
 int FUNC7 (struct world*,struct objagg*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct world*,struct objagg*,int) ; 

__attribute__((used)) static int FUNC9(void)
{
	struct world world = {};
	struct objagg *objagg;
	int i;
	int err;

	objagg = FUNC4(&nodelta_ops, NULL, &world);
	if (FUNC0(objagg))
		return FUNC1(objagg);

	err = FUNC3(objagg);
	if (err)
		goto err_stats_first_zero;

	/* First round of gets, the root objects should be created */
	for (i = 0; i < NUM_KEYS; i++) {
		err = FUNC6(&world, objagg, i, true);
		if (err)
			goto err_obj_first_get;
	}

	/* Do the second round of gets, all roots are already created,
	 * make sure that no new root is created
	 */
	for (i = 0; i < NUM_KEYS; i++) {
		err = FUNC6(&world, objagg, i, false);
		if (err)
			goto err_obj_second_get;
	}

	err = FUNC2(objagg);
	if (err)
		goto err_stats_nodelta;

	for (i = NUM_KEYS - 1; i >= 0; i--) {
		err = FUNC7(&world, objagg, i, false);
		if (err)
			goto err_obj_first_put;
	}
	for (i = NUM_KEYS - 1; i >= 0; i--) {
		err = FUNC7(&world, objagg, i, true);
		if (err)
			goto err_obj_second_put;
	}

	err = FUNC3(objagg);
	if (err)
		goto err_stats_second_zero;

	FUNC5(objagg);
	return 0;

err_stats_nodelta:
err_obj_first_put:
err_obj_second_get:
	for (i--; i >= 0; i--)
		FUNC8(&world, objagg, i);

	i = NUM_KEYS;
err_obj_first_get:
err_obj_second_put:
	for (i--; i >= 0; i--)
		FUNC8(&world, objagg, i);
err_stats_first_zero:
err_stats_second_zero:
	FUNC5(objagg);
	return err;
}