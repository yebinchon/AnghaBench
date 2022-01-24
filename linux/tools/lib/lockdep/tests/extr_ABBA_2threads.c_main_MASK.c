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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 scalar_t__ PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  a ; 
 int /*<<< orphan*/  b ; 
 int /*<<< orphan*/  ba_lock ; 
 int /*<<< orphan*/  bar ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void)
{
	pthread_t t;

	FUNC2(&bar, NULL, 2);

	if (FUNC4(&t, NULL, ba_lock, NULL)) {
		FUNC0(stderr, "pthread_create() failed\n");
		return 1;
	}
	FUNC6(&a);

	if (FUNC3(&bar) == PTHREAD_BARRIER_SERIAL_THREAD)
		FUNC1(&bar);

	FUNC6(&b);

	FUNC7(&b);
	FUNC7(&a);

	FUNC5(t, NULL);

	return 0;
}