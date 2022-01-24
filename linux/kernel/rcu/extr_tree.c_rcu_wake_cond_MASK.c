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
 int RCU_KTHREAD_YIELDING ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

__attribute__((used)) static void FUNC2(struct task_struct *t, int status)
{
	/*
	 * If the thread is yielding, only wake it when this
	 * is invoked from idle
	 */
	if (t && (status != RCU_KTHREAD_YIELDING || FUNC0(current)))
		FUNC1(t);
}