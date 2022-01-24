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
typedef  int /*<<< orphan*/  gimple ;
typedef  scalar_t__ const_tree ;

/* Variables and functions */
 int /*<<< orphan*/  CHAR_TYPE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
#define  INTEGER_TYPE 130 
 scalar_t__ NULL_TREE ; 
#define  POINTER_TYPE 129 
#define  RECORD_TYPE 128 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int VOID_TYPE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC8(gimple stmt, const_tree type_tree, const char *wanted_name)
{
	const char *type_name;

	if (type_tree == NULL_TREE)
		return false;

	switch (FUNC1(type_tree)) {
	case RECORD_TYPE:
		type_name = FUNC3(type_tree);
		break;
	case INTEGER_TYPE:
		if (FUNC4(type_tree) == CHAR_TYPE_SIZE)
			type_name = "char";
		else {
			FUNC0(FUNC6(stmt), "found non-char INTEGER_TYPE cast comparison: %qT\n", type_tree);
			FUNC5(type_tree);
			return false;
		}
		break;
	case POINTER_TYPE:
		if (FUNC1(FUNC2(type_tree)) == VOID_TYPE) {
			type_name = "void *";
			break;
		} else {
			FUNC0(FUNC6(stmt), "found non-void POINTER_TYPE cast comparison %qT\n", type_tree);
			FUNC5(type_tree);
			return false;
		}
	default:
		FUNC0(FUNC6(stmt), "unhandled cast comparison: %qT\n", type_tree);
		FUNC5(type_tree);
		return false;
	}

	return FUNC7(type_name, wanted_name) == 0;
}