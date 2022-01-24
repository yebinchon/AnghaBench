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
struct task_struct {int /*<<< orphan*/ * vfork_done; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int FUNC7 (struct completion*) ; 

__attribute__((used)) static int FUNC8(struct task_struct *child,
				struct completion *vfork)
{
	int killed;

	FUNC3();
	FUNC0();
	killed = FUNC7(vfork);
	FUNC1(false);
	FUNC2();

	if (killed) {
		FUNC5(child);
		child->vfork_done = NULL;
		FUNC6(child);
	}

	FUNC4(child);
	return killed;
}