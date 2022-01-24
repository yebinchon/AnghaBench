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
struct kernel_siginfo {int dummy; } ;
struct cred {int dummy; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 struct aa_label* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 struct aa_label* FUNC2 (struct cred const*) ; 
 struct aa_label* FUNC3 (struct task_struct*) ; 
 int FUNC4 (struct aa_label*,struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_label*) ; 

__attribute__((used)) static int FUNC6(struct task_struct *target, struct kernel_siginfo *info,
			      int sig, const struct cred *cred)
{
	struct aa_label *cl, *tl;
	int error;

	if (cred) {
		/*
		 * Dealing with USB IO specific behavior
		 */
		cl = FUNC2(cred);
		tl = FUNC3(target);
		error = FUNC4(cl, tl, sig);
		FUNC5(cl);
		FUNC5(tl);
		return error;
	}

	cl = FUNC0();
	tl = FUNC3(target);
	error = FUNC4(cl, tl, sig);
	FUNC5(tl);
	FUNC1(cl);

	return error;
}