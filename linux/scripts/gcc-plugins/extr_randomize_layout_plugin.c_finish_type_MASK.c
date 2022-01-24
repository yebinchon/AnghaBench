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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(void *event_data, void *data)
{
	tree type = (tree)event_data;

	if (type == NULL_TREE || type == error_mark_node)
		return;

	if (FUNC1(type) != RECORD_TYPE)
		return;

	if (FUNC3(type) == NULL_TREE)
		return;

	if (FUNC6("randomize_considered", FUNC2(type)))
		return;

#ifdef __DEBUG_PLUGIN
	fprintf(stderr, "Calling randomize_type on %s\n", ORIG_TYPE_NAME(type));
#endif
#ifdef __DEBUG_VERBOSE
	debug_tree(type);
#endif
	FUNC7(type);

	return;
}