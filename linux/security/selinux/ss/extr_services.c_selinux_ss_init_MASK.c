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
struct selinux_ss {int /*<<< orphan*/  status_lock; int /*<<< orphan*/  policy_rwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct selinux_ss selinux_ss ; 

void FUNC2(struct selinux_ss **ss)
{
	FUNC1(&selinux_ss.policy_rwlock);
	FUNC0(&selinux_ss.status_lock);
	*ss = &selinux_ss;
}