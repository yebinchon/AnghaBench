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
 int /*<<< orphan*/  MAX_IDX ; 
 int /*<<< orphan*/  NEW_TAG ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  array ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_complete ; 

__attribute__((used)) static void *FUNC3(void *arg)
{
	FUNC0();

	while (!test_complete) {
		FUNC2(&array, 0, MAX_IDX, 10, TAG, NEW_TAG);
	}
	FUNC1();
	return NULL;
}