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
struct super_block {int dummy; } ;
struct kernfs_super_info {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 struct kernfs_super_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_super_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct super_block *sb)
{
	struct kernfs_super_info *info = FUNC0(sb);

	FUNC4(&kernfs_mutex);
	FUNC3(&info->node);
	FUNC5(&kernfs_mutex);

	/*
	 * Remove the superblock from fs_supers/s_instances
	 * so we can't find it, before freeing kernfs_super_info.
	 */
	FUNC2(sb);
	FUNC1(info);
}