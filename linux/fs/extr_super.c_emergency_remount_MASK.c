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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_emergency_remount ; 
 struct work_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*) ; 

void FUNC3(void)
{
	struct work_struct *work;

	work = FUNC1(sizeof(*work), GFP_ATOMIC);
	if (work) {
		FUNC0(work, do_emergency_remount);
		FUNC2(work);
	}
}