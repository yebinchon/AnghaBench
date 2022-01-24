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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  p9_xen_trans ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_9pfs_front_driver ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	int rc;

	if (!FUNC3())
		return -ENODEV;

	FUNC0("Initialising Xen transport for 9pfs\n");

	FUNC1(&p9_xen_trans);
	rc = FUNC4(&xen_9pfs_front_driver);
	if (rc)
		FUNC2(&p9_xen_trans);

	return rc;
}