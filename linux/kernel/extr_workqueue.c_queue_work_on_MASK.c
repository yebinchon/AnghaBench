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
struct workqueue_struct {int dummy; } ;
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WORK_STRUCT_PENDING_BIT ; 
 int /*<<< orphan*/  FUNC0 (int,struct workqueue_struct*,struct work_struct*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct work_struct*) ; 

bool FUNC5(int cpu, struct workqueue_struct *wq,
		   struct work_struct *work)
{
	bool ret = false;
	unsigned long flags;

	FUNC2(flags);

	if (!FUNC3(WORK_STRUCT_PENDING_BIT, FUNC4(work))) {
		FUNC0(cpu, wq, work);
		ret = true;
	}

	FUNC1(flags);
	return ret;
}