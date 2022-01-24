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
 int /*<<< orphan*/  cleanup_work ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ kmemleak_enabled ; 
 int /*<<< orphan*/  kmemleak_error ; 
 scalar_t__ kmemleak_free_enabled ; 
 scalar_t__ kmemleak_initialized ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	/* atomically check whether it was already invoked */
	if (FUNC0(&kmemleak_error, 0, 1))
		return;

	/* stop any memory operation tracing */
	kmemleak_enabled = 0;

	/* check whether it is too early for a kernel thread */
	if (kmemleak_initialized)
		FUNC2(&cleanup_work);
	else
		kmemleak_free_enabled = 0;

	FUNC1("Kernel memory leak detector disabled\n");
}