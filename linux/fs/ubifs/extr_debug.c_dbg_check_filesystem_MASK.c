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
struct ubifs_info {int dummy; } ;
struct fsck_data {int /*<<< orphan*/  inodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  RB_ROOT ; 
 int FUNC0 (struct ubifs_info*,struct fsck_data*) ; 
 int /*<<< orphan*/  check_leaf ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int FUNC2 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fsck_data*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fsck_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,char*,int) ; 

int FUNC6(struct ubifs_info *c)
{
	int err;
	struct fsck_data fsckd;

	if (!FUNC1(c))
		return 0;

	fsckd.inodes = RB_ROOT;
	err = FUNC2(c, check_leaf, NULL, &fsckd);
	if (err)
		goto out_free;

	err = FUNC0(c, &fsckd);
	if (err)
		goto out_free;

	FUNC4(&fsckd);
	return 0;

out_free:
	FUNC5(c, "file-system check failed with error %d", err);
	FUNC3();
	FUNC4(&fsckd);
	return err;
}