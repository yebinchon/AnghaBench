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
 unsigned long MAX_IDX ; 
 int /*<<< orphan*/  array ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  test_complete ; 

__attribute__((used)) static void *FUNC3(void *arg)
{
	FUNC1();

	while (!test_complete) {
		unsigned long pgoff;

		for (pgoff = 0; pgoff < MAX_IDX; pgoff++) {
			FUNC0(&array, pgoff);
		}
	}

	FUNC2();

	return NULL;
}