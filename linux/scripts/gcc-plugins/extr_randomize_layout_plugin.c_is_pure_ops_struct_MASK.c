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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  scalar_t__ const_tree ;

/* Variables and functions */
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(const_tree node)
{
	const_tree field;

	FUNC3(FUNC1(node) == RECORD_TYPE || FUNC1(node) == UNION_TYPE);

	for (field = FUNC2(node); field; field = FUNC0(field)) {
		const_tree fieldtype = FUNC4(field);
		enum tree_code code = FUNC1(fieldtype);

		if (node == fieldtype)
			continue;

		if (code == RECORD_TYPE || code == UNION_TYPE) {
			if (!FUNC6(fieldtype))
				return 0;
			continue;
		}

		if (!FUNC5(fieldtype))
			return 0;
	}

	return 1;
}