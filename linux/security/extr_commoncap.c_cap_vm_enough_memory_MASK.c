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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_OPT_NOAUDIT ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  init_user_ns ; 

int FUNC2(struct mm_struct *mm, long pages)
{
	int cap_sys_admin = 0;

	if (FUNC0(FUNC1(), &init_user_ns,
				CAP_SYS_ADMIN, CAP_OPT_NOAUDIT) == 0)
		cap_sys_admin = 1;

	return cap_sys_admin;
}