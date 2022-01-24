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
typedef  char* tree ;

/* Variables and functions */
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* NULL_TREE ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree FUNC8(tree *node, tree name, tree args, int flags, bool *no_add_attrs)
{
	tree type;

	*no_add_attrs = true;
	if (FUNC1(*node) == FUNCTION_DECL) {
		FUNC5("%qE attribute does not apply to functions (%qF)", name, *node);
		return NULL_TREE;
	}

	if (FUNC1(*node) == PARM_DECL) {
		FUNC5("%qE attribute does not apply to function parameters (%qD)", name, *node);
		return NULL_TREE;
	}

	if (FUNC1(*node) == VAR_DECL) {
		FUNC5("%qE attribute does not apply to variables (%qD)", name, *node);
		return NULL_TREE;
	}

	if (FUNC4(*node)) {
		type = *node;
	} else {
		FUNC6(FUNC1(*node) == TYPE_DECL);
		type = FUNC2(*node);
	}

	if (FUNC1(type) != RECORD_TYPE) {
		FUNC5("%qE attribute used on %qT applies to struct types only", name, type);
		return NULL_TREE;
	}

	if (FUNC7(FUNC0(name), FUNC3(type))) {
		FUNC5("%qE attribute is already applied to the type %qT", name, type);
		return NULL_TREE;
	}

	*no_add_attrs = false;

	return NULL_TREE;
}