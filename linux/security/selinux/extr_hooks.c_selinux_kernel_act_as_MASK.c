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
struct task_security_struct {scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; int /*<<< orphan*/  sid; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_SERVICE__USE_AS_OVERRIDE ; 
 int /*<<< orphan*/  SECCLASS_KERNEL_SERVICE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct task_security_struct* FUNC2 (struct cred*) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC3(struct cred *new, u32 secid)
{
	struct task_security_struct *tsec = FUNC2(new);
	u32 sid = FUNC1();
	int ret;

	ret = FUNC0(&selinux_state,
			   sid, secid,
			   SECCLASS_KERNEL_SERVICE,
			   KERNEL_SERVICE__USE_AS_OVERRIDE,
			   NULL);
	if (ret == 0) {
		tsec->sid = secid;
		tsec->create_sid = 0;
		tsec->keycreate_sid = 0;
		tsec->sockcreate_sid = 0;
	}
	return ret;
}