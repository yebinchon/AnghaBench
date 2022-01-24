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
struct func_stack {int size; char** stack; } ;

/* Variables and functions */
 int STK_BLK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (char**,int) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct func_stack *stack, const char *child, int pos)
{
	int i;

	if (!child)
		return;

	if (pos < stack->size)
		FUNC0(stack->stack[pos]);
	else {
		char **ptr;

		ptr = FUNC1(stack->stack, sizeof(char *) *
			      (stack->size + STK_BLK));
		if (!ptr) {
			FUNC3("could not allocate plugin memory\n");
			return;
		}

		stack->stack = ptr;

		for (i = stack->size; i < stack->size + STK_BLK; i++)
			stack->stack[i] = NULL;
		stack->size += STK_BLK;
	}

	stack->stack[pos] = FUNC2(child);
}