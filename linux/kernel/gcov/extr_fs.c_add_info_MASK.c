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
struct gcov_node {int num_loaded; struct gcov_info** loaded_info; struct gcov_info* unloaded_info; } ;
struct gcov_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct gcov_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct gcov_info*,struct gcov_info*) ; 
 struct gcov_info** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gcov_info**) ; 
 int /*<<< orphan*/  FUNC5 (struct gcov_info**,struct gcov_info**,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gcov_node *node, struct gcov_info *info)
{
	struct gcov_info **loaded_info;
	int num = node->num_loaded;

	/*
	 * Prepare new array. This is done first to simplify cleanup in
	 * case the new data set is incompatible, the node only contains
	 * unloaded data sets and there's not enough memory for the array.
	 */
	loaded_info = FUNC3(num + 1, sizeof(struct gcov_info *), GFP_KERNEL);
	if (!loaded_info) {
		FUNC6("could not add '%s' (out of memory)\n",
			FUNC0(info));
		return;
	}
	FUNC5(loaded_info, node->loaded_info,
	       num * sizeof(struct gcov_info *));
	loaded_info[num] = info;
	/* Check if the new data set is compatible. */
	if (num == 0) {
		/*
		 * A module was unloaded, modified and reloaded. The new
		 * data set replaces the copy of the last one.
		 */
		if (!FUNC2(node->unloaded_info, info)) {
			FUNC6("discarding saved data for %s "
				"(incompatible version)\n",
				FUNC0(info));
			FUNC1(node->unloaded_info);
			node->unloaded_info = NULL;
		}
	} else {
		/*
		 * Two different versions of the same object file are loaded.
		 * The initial one takes precedence.
		 */
		if (!FUNC2(node->loaded_info[0], info)) {
			FUNC6("could not add '%s' (incompatible "
				"version)\n", FUNC0(info));
			FUNC4(loaded_info);
			return;
		}
	}
	/* Overwrite previous array. */
	FUNC4(node->loaded_info);
	node->loaded_info = loaded_info;
	node->num_loaded = num + 1;
}