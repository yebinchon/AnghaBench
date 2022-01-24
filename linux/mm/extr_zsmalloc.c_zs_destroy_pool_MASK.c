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
struct zs_pool {int index; struct zs_pool* name; int /*<<< orphan*/  size; int /*<<< orphan*/ * fullness_list; struct zs_pool** size_class; } ;
struct size_class {int index; struct size_class* name; int /*<<< orphan*/  size; int /*<<< orphan*/ * fullness_list; struct size_class** size_class; } ;

/* Variables and functions */
 int NR_ZS_FULLNESS ; 
 int ZS_EMPTY ; 
 int ZS_SIZE_CLASSES ; 
 int /*<<< orphan*/  FUNC0 (struct zs_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct zs_pool*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct zs_pool*) ; 
 int /*<<< orphan*/  FUNC5 (struct zs_pool*) ; 
 int /*<<< orphan*/  FUNC6 (struct zs_pool*) ; 

void FUNC7(struct zs_pool *pool)
{
	int i;

	FUNC6(pool);
	FUNC5(pool);
	FUNC4(pool);

	for (i = 0; i < ZS_SIZE_CLASSES; i++) {
		int fg;
		struct size_class *class = pool->size_class[i];

		if (!class)
			continue;

		if (class->index != i)
			continue;

		for (fg = ZS_EMPTY; fg < NR_ZS_FULLNESS; fg++) {
			if (!FUNC2(&class->fullness_list[fg])) {
				FUNC3("Freeing non-empty class with size %db, fullness group %d\n",
					class->size, fg);
			}
		}
		FUNC1(class);
	}

	FUNC0(pool);
	FUNC1(pool->name);
	FUNC1(pool);
}