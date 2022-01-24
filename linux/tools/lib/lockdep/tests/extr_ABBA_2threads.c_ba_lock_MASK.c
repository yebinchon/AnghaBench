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
 scalar_t__ PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  a ; 
 int /*<<< orphan*/  b ; 
 int /*<<< orphan*/  bar ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *FUNC4(void *arg)
{
	int ret, i;

	FUNC2(&b);

	if (FUNC1(&bar) == PTHREAD_BARRIER_SERIAL_THREAD)
		FUNC0(&bar);

	FUNC2(&a);

	FUNC3(&a);
	FUNC3(&b);
}