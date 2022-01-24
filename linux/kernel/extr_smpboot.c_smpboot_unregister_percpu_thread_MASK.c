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
struct smp_hotplug_thread {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct smp_hotplug_thread*) ; 
 int /*<<< orphan*/  smpboot_threads_lock ; 

void FUNC6(struct smp_hotplug_thread *plug_thread)
{
	FUNC0();
	FUNC2(&smpboot_threads_lock);
	FUNC1(&plug_thread->list);
	FUNC5(plug_thread);
	FUNC3(&smpboot_threads_lock);
	FUNC4();
}