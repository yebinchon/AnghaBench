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
typedef  struct cred const cred ;
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROCESS__SETCAP ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cred const*) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC2(struct cred *new, const struct cred *old,
			  const kernel_cap_t *effective,
			  const kernel_cap_t *inheritable,
			  const kernel_cap_t *permitted)
{
	return FUNC0(&selinux_state,
			    FUNC1(old), FUNC1(new), SECCLASS_PROCESS,
			    PROCESS__SETCAP, NULL);
}