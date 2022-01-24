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
struct cred {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cred*,struct cred const*,int) ; 
 int /*<<< orphan*/  task_fix_setuid ; 

int FUNC1(struct cred *new, const struct cred *old,
			     int flags)
{
	return FUNC0(task_fix_setuid, 0, new, old, flags);
}