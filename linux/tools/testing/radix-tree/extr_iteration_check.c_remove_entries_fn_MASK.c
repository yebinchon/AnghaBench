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
struct item {int dummy; } ;

/* Variables and functions */
 int MAX_IDX ; 
 int /*<<< orphan*/  array ; 
 int /*<<< orphan*/  FUNC0 (struct item*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * seeds ; 
 int /*<<< orphan*/  test_complete ; 
 struct item* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void *FUNC5(void *arg)
{
	FUNC2();

	while (!test_complete) {
		int pgoff;
		struct item *item;

		pgoff = FUNC1(&seeds[2]) % MAX_IDX;

		item = FUNC4(&array, pgoff);
		if (item)
			FUNC0(item, pgoff);
	}

	FUNC3();

	return NULL;
}