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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER__TRANSFER ; 
 int /*<<< orphan*/  SECCLASS_BINDER ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

__attribute__((used)) static int FUNC2(struct task_struct *from,
					  struct task_struct *to)
{
	u32 fromsid = FUNC1(from);
	u32 tosid = FUNC1(to);

	return FUNC0(&selinux_state,
			    fromsid, tosid, SECCLASS_BINDER, BINDER__TRANSFER,
			    NULL);
}