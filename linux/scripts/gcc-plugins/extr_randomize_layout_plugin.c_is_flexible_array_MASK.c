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
typedef  scalar_t__ const_tree ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bool FUNC7(const_tree field)
{
	const_tree fieldtype;
	const_tree typesize;
	const_tree elemtype;
	const_tree elemsize;

	fieldtype = FUNC2(field);
	typesize = FUNC5(fieldtype);

	if (FUNC0(fieldtype) != ARRAY_TYPE)
		return false;

	elemtype = FUNC2(fieldtype);
	elemsize = FUNC5(elemtype);

	/* size of type is represented in bits */

	if (typesize == NULL_TREE && FUNC3(fieldtype) != NULL_TREE &&
	    FUNC4(FUNC3(fieldtype)) == NULL_TREE)
		return true;

	if (typesize != NULL_TREE &&
	    (FUNC1(typesize) && (!FUNC6(typesize) ||
	     FUNC6(typesize) == FUNC6(elemsize))))
		return true;

	return false;
}