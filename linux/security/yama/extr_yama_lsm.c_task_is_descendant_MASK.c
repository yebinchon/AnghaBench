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
struct task_struct {scalar_t__ pid; int /*<<< orphan*/  real_parent; int /*<<< orphan*/  group_leader; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct task_struct *parent,
			      struct task_struct *child)
{
	int rc = 0;
	struct task_struct *walker = child;

	if (!parent || !child)
		return 0;

	FUNC1();
	if (!FUNC3(parent))
		parent = FUNC0(parent->group_leader);
	while (walker->pid > 0) {
		if (!FUNC3(walker))
			walker = FUNC0(walker->group_leader);
		if (walker == parent) {
			rc = 1;
			break;
		}
		walker = FUNC0(walker->real_parent);
	}
	FUNC2();

	return rc;
}