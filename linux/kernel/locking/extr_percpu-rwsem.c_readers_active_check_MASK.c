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
struct percpu_rw_semaphore {int /*<<< orphan*/ * read_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static bool FUNC2(struct percpu_rw_semaphore *sem)
{
	if (FUNC0(*sem->read_count) != 0)
		return false;

	/*
	 * If we observed the decrement; ensure we see the entire critical
	 * section.
	 */

	FUNC1(); /* C matches B */

	return true;
}