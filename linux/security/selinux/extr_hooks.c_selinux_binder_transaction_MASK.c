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
typedef  scalar_t__ u32 ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER__CALL ; 
 int /*<<< orphan*/  BINDER__IMPERSONATE ; 
 int /*<<< orphan*/  SECCLASS_BINDER ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  selinux_state ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 

__attribute__((used)) static int FUNC3(struct task_struct *from,
				      struct task_struct *to)
{
	u32 mysid = FUNC1();
	u32 fromsid = FUNC2(from);
	u32 tosid = FUNC2(to);
	int rc;

	if (mysid != fromsid) {
		rc = FUNC0(&selinux_state,
				  mysid, fromsid, SECCLASS_BINDER,
				  BINDER__IMPERSONATE, NULL);
		if (rc)
			return rc;
	}

	return FUNC0(&selinux_state,
			    fromsid, tosid, SECCLASS_BINDER, BINDER__CALL,
			    NULL);
}