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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *addr, int onstack)
{
	int is_on_stack;
	static int limit;

	if (limit > 4)
		return;

	is_on_stack = FUNC1(addr);
	if (is_on_stack == onstack)
		return;

	limit++;
	if (is_on_stack)
		FUNC2("object %p is on stack %p, but NOT annotated.\n", addr,
			 FUNC3(current));
	else
		FUNC2("object %p is NOT on stack %p, but annotated.\n", addr,
			 FUNC3(current));

	FUNC0(1);
}