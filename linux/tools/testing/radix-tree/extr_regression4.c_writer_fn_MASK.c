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
 int /*<<< orphan*/  mt_tree ; 
 int /*<<< orphan*/  obj1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  worker_barrier ; 

__attribute__((used)) static void *FUNC5(void *arg)
{
	int i;

	FUNC3();
	FUNC0(&worker_barrier);

	for (i = 0; i < 1000000; i++) {
		FUNC2(&mt_tree, 1, &obj1);
		FUNC1(&mt_tree, 1);
	}

	FUNC4();

	return NULL;
}