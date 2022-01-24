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
struct percpu_ref {int force_atomic; } ;
typedef  int /*<<< orphan*/  percpu_ref_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct percpu_ref*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  percpu_ref_switch_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct percpu_ref *ref,
				 percpu_ref_func_t *confirm_switch)
{
	unsigned long flags;

	FUNC1(&percpu_ref_switch_lock, flags);

	ref->force_atomic = true;
	FUNC0(ref, confirm_switch);

	FUNC2(&percpu_ref_switch_lock, flags);
}