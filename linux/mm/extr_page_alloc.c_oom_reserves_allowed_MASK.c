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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MMU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static bool FUNC3(struct task_struct *tsk)
{
	if (!FUNC2(tsk))
		return false;

	/*
	 * !MMU doesn't have oom reaper so give access to memory reserves
	 * only to the thread with TIF_MEMDIE set
	 */
	if (!FUNC0(CONFIG_MMU) && !FUNC1(TIF_MEMDIE))
		return false;

	return true;
}