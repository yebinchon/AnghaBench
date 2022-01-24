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
struct evlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ SORT_MODE__DIFF ; 
 int FUNC0 () ; 
 int FUNC1 (struct evlist*) ; 
 scalar_t__ default_parent_pattern ; 
 scalar_t__ parent_pattern ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct evlist*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_hpp_list ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ sort__mode ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,struct evlist*,int) ; 

int FUNC8(struct evlist *evlist)
{
	int err;

	err = FUNC1(evlist);
	if (err < 0)
		return err;

	if (parent_pattern != default_parent_pattern) {
		err = FUNC7(&perf_hpp_list, "parent", evlist, -1);
		if (err < 0)
			return err;
	}

	FUNC6();

	/*
	 * perf diff doesn't use default hpp output fields.
	 */
	if (sort__mode != SORT_MODE__DIFF)
		FUNC3();

	err = FUNC0();
	if (err < 0)
		return err;

	/* copy sort keys to output fields */
	FUNC5(&perf_hpp_list);
	/* and then copy output fields to sort keys */
	FUNC2(&perf_hpp_list);

	/* setup hists-specific output fields */
	if (FUNC4(&perf_hpp_list, evlist) < 0)
		return -1;

	return 0;
}