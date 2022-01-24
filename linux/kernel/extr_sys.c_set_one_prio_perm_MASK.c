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
struct task_struct {int dummy; } ;
struct cred {int /*<<< orphan*/  user_ns; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 struct cred* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct task_struct *p)
{
	const struct cred *cred = FUNC1(), *pcred = FUNC0(p);

	if (FUNC3(pcred->uid,  cred->euid) ||
	    FUNC3(pcred->euid, cred->euid))
		return true;
	if (FUNC2(pcred->user_ns, CAP_SYS_NICE))
		return true;
	return false;
}