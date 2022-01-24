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
struct super_block {int /*<<< orphan*/  s_umount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 

int FUNC4(struct super_block *sb)
{
	int ret;

	/*
	 * We need to be protected against the filesystem going from
	 * r/o to r/w or vice versa.
	 */
	FUNC0(!FUNC2(&sb->s_umount));

	/*
	 * No point in syncing out anything if the filesystem is read-only.
	 */
	if (FUNC3(sb))
		return 0;

	ret = FUNC1(sb, 0);
	if (ret < 0)
		return ret;
	return FUNC1(sb, 1);
}