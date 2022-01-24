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
struct objagg_obj {int dummy; } ;
typedef  struct objagg_obj objagg_hints ;
typedef  struct objagg_obj objagg ;
struct hints_case {int key_ids_count; int /*<<< orphan*/ * key_ids; int /*<<< orphan*/  expect_stats_hints; int /*<<< orphan*/  expect_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct objagg_obj*) ; 
 int /*<<< orphan*/  OBJAGG_OPT_ALGO_SIMPLE_GREEDY ; 
 int FUNC1 (struct objagg_obj*) ; 
 int FUNC2 (struct objagg_obj*,int /*<<< orphan*/ *,char const**) ; 
 int FUNC3 (struct objagg_obj*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  delta_ops ; 
 struct objagg_obj* FUNC4 (int /*<<< orphan*/ *,struct objagg_obj*,struct world*) ; 
 int /*<<< orphan*/  FUNC5 (struct objagg_obj*) ; 
 struct objagg_obj* FUNC6 (struct objagg_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC8 (struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC9 (struct objagg_obj*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 struct objagg_obj* FUNC11 (struct world*,struct objagg_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct world*,struct objagg_obj*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(const struct hints_case *hints_case)
{
	struct objagg_obj *objagg_obj;
	struct objagg_hints *hints;
	struct world world2 = {};
	struct world world = {};
	struct objagg *objagg2;
	struct objagg *objagg;
	const char *errmsg;
	int i;
	int err;

	objagg = FUNC4(&delta_ops, NULL, &world);
	if (FUNC0(objagg))
		return FUNC1(objagg);

	for (i = 0; i < hints_case->key_ids_count; i++) {
		objagg_obj = FUNC11(&world, objagg,
					   hints_case->key_ids[i]);
		if (FUNC0(objagg_obj)) {
			err = FUNC1(objagg_obj);
			goto err_world_obj_get;
		}
	}

	FUNC9(objagg);
	err = FUNC3(objagg, &hints_case->expect_stats, &errmsg);
	if (err) {
		FUNC10("Stats: %s\n", errmsg);
		goto err_check_expect_stats;
	}

	hints = FUNC6(objagg, OBJAGG_OPT_ALGO_SIMPLE_GREEDY);
	if (FUNC0(hints)) {
		err = FUNC1(hints);
		goto err_hints_get;
	}

	FUNC8(hints);
	err = FUNC2(hints, &hints_case->expect_stats_hints,
				       &errmsg);
	if (err) {
		FUNC10("Hints stats: %s\n", errmsg);
		goto err_check_expect_hints_stats;
	}

	objagg2 = FUNC4(&delta_ops, hints, &world2);
	if (FUNC0(objagg2))
		return FUNC1(objagg2);

	for (i = 0; i < hints_case->key_ids_count; i++) {
		objagg_obj = FUNC11(&world2, objagg2,
					   hints_case->key_ids[i]);
		if (FUNC0(objagg_obj)) {
			err = FUNC1(objagg_obj);
			goto err_world2_obj_get;
		}
	}

	FUNC9(objagg2);
	err = FUNC3(objagg2, &hints_case->expect_stats_hints,
				 &errmsg);
	if (err) {
		FUNC10("Stats2: %s\n", errmsg);
		goto err_check_expect_stats2;
	}

	err = 0;

err_check_expect_stats2:
err_world2_obj_get:
	for (i--; i >= 0; i--)
		FUNC12(&world2, objagg, hints_case->key_ids[i]);
	FUNC7(hints);
	FUNC5(objagg2);
	i = hints_case->key_ids_count;
err_check_expect_hints_stats:
err_hints_get:
err_check_expect_stats:
err_world_obj_get:
	for (i--; i >= 0; i--)
		FUNC12(&world, objagg, hints_case->key_ids[i]);

	FUNC5(objagg);
	return err;
}