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
struct smack_known {int /*<<< orphan*/  smk_known; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smack_known* FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct task_struct *p, char *name, char **value)
{
	struct smack_known *skp = FUNC1(p);
	char *cp;
	int slen;

	if (FUNC2(name, "current") != 0)
		return -EINVAL;

	cp = FUNC0(skp->smk_known, GFP_KERNEL);
	if (cp == NULL)
		return -ENOMEM;

	slen = FUNC3(cp);
	*value = cp;
	return slen;
}