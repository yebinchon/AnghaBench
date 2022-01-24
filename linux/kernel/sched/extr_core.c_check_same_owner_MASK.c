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
struct cred {int /*<<< orphan*/  uid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 struct cred* FUNC0 (struct task_struct*) ; 
 struct cred* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct task_struct *p)
{
	const struct cred *cred = FUNC1(), *pcred;
	bool match;

	FUNC2();
	pcred = FUNC0(p);
	match = (FUNC4(cred->euid, pcred->euid) ||
		 FUNC4(cred->euid, pcred->uid));
	FUNC3();
	return match;
}