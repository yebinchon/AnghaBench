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
 int ENOMEM ; 
 int /*<<< orphan*/  fs_kobj ; 
 int /*<<< orphan*/  fuse_kobj ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	int err;

	fuse_kobj = FUNC0("fuse", fs_kobj);
	if (!fuse_kobj) {
		err = -ENOMEM;
		goto out_err;
	}

	err = FUNC2(fuse_kobj, "connections");
	if (err)
		goto out_fuse_unregister;

	return 0;

 out_fuse_unregister:
	FUNC1(fuse_kobj);
 out_err:
	return err;
}