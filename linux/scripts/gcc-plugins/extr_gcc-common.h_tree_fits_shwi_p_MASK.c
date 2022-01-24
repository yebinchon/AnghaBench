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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC5(const_tree t)
{
	if (t == NULL_TREE || FUNC0(t) != INTEGER_CST)
		return false;

	if (FUNC1(t) == 0 && (HOST_WIDE_INT)FUNC2(t) >= 0)
		return true;

	if (FUNC1(t) == -1 && (HOST_WIDE_INT)FUNC2(t) < 0 && !FUNC4(FUNC3(t)))
		return true;

	return false;
}