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
struct sighand_struct {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sighand_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sighand_cachep ; 
 int /*<<< orphan*/  FUNC2 (struct sighand_struct*) ; 

void FUNC3(struct sighand_struct *sighand)
{
	if (FUNC1(&sighand->count)) {
		FUNC2(sighand);
		/*
		 * sighand_cachep is SLAB_TYPESAFE_BY_RCU so we can free it
		 * without an RCU grace period, see __lock_task_sighand().
		 */
		FUNC0(sighand_cachep, sighand);
	}
}