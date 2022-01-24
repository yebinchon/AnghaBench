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
union nested_table {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 unsigned int PAGE_SHIFT ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (union nested_table*) ; 
 union nested_table* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(union nested_table *ntbl, unsigned int size)
{
	const unsigned int shift = PAGE_SHIFT - FUNC0(sizeof(void *));
	const unsigned int len = 1 << shift;
	unsigned int i;

	ntbl = FUNC2(ntbl->table);
	if (!ntbl)
		return;

	if (size > len) {
		size >>= shift;
		for (i = 0; i < len; i++)
			FUNC3(ntbl + i, size);
	}

	FUNC1(ntbl);
}