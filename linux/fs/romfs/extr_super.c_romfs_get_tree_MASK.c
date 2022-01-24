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
struct fs_context {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct fs_context*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fs_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  romfs_fill_super ; 

__attribute__((used)) static int FUNC2(struct fs_context *fc)
{
	int ret = -EINVAL;

#ifdef CONFIG_ROMFS_ON_MTD
	ret = get_tree_mtd(fc, romfs_fill_super);
#endif
#ifdef CONFIG_ROMFS_ON_BLOCK
	if (ret == -EINVAL)
		ret = get_tree_bdev(fc, romfs_fill_super);
#endif
	return ret;
}