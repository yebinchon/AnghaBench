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
struct fown_struct {int /*<<< orphan*/  uid; int /*<<< orphan*/  euid; } ;
struct cred {int /*<<< orphan*/  uid; int /*<<< orphan*/  suid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct fown_struct*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct task_struct *p,
                             struct fown_struct *fown, int sig)
{
	const struct cred *cred;
	int ret;

	FUNC1();
	cred = FUNC0(p);
	ret = ((FUNC4(fown->euid, GLOBAL_ROOT_UID) ||
		FUNC4(fown->euid, cred->suid) || FUNC4(fown->euid, cred->uid) ||
		FUNC4(fown->uid,  cred->suid) || FUNC4(fown->uid,  cred->uid)) &&
	       !FUNC3(p, fown, sig));
	FUNC2();
	return ret;
}