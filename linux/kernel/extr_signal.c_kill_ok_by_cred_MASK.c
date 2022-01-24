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
struct cred {int /*<<< orphan*/  user_ns; int /*<<< orphan*/  uid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_KILL ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 struct cred* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct task_struct *t)
{
	const struct cred *cred = FUNC1();
	const struct cred *tcred = FUNC0(t);

	return FUNC3(cred->euid, tcred->suid) ||
	       FUNC3(cred->euid, tcred->uid) ||
	       FUNC3(cred->uid, tcred->suid) ||
	       FUNC3(cred->uid, tcred->uid) ||
	       FUNC2(tcred->user_ns, CAP_KILL);
}