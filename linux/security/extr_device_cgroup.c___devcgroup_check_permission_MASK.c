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
struct dev_cgroup {scalar_t__ behavior; int /*<<< orphan*/  exceptions; } ;

/* Variables and functions */
 scalar_t__ DEVCG_DEFAULT_ALLOW ; 
 int EPERM ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (int /*<<< orphan*/ *,short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,short) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct dev_cgroup* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(short type, u32 major, u32 minor,
				 short access)
{
	struct dev_cgroup *dev_cgroup;
	bool rc;

	FUNC2();
	dev_cgroup = FUNC4(current);
	if (dev_cgroup->behavior == DEVCG_DEFAULT_ALLOW)
		/* Can't match any of the exceptions, even partially */
		rc = !FUNC1(&dev_cgroup->exceptions,
					      type, major, minor, access);
	else
		/* Need to match completely one exception to be allowed */
		rc = FUNC0(&dev_cgroup->exceptions, type, major,
				     minor, access);
	FUNC3();

	if (!rc)
		return -EPERM;

	return 0;
}