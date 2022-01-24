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
struct cred {int /*<<< orphan*/  group_info; int /*<<< orphan*/  egid; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 struct cred* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(kgid_t grp)
{
	const struct cred *cred = FUNC0();
	int retval = 1;

	if (!FUNC1(grp, cred->egid))
		retval = FUNC2(cred->group_info, grp);
	return retval;
}