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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int RECORD_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int UNION_TYPE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(tree type)
{
	tree field;

	for (field = FUNC3(type); field; field = FUNC1(field)) {
		tree fieldtype = FUNC4(field);
		enum tree_code code = FUNC2(fieldtype);

		if (code == RECORD_TYPE || code == UNION_TYPE)
			if (FUNC6(fieldtype))
				return true;

		if (FUNC5("user", FUNC0(field)))
			return true;
	}
	return false;
}