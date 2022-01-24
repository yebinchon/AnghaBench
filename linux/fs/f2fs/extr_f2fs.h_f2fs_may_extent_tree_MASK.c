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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int /*<<< orphan*/  s_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_CACHE ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_NO_EXTENT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC5(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);

	if (!FUNC4(sbi, EXTENT_CACHE) ||
			FUNC2(inode, FI_NO_EXTENT))
		return false;

	/*
	 * for recovered files during mount do not create extents
	 * if shrinker is not registered.
	 */
	if (FUNC3(&sbi->s_list))
		return false;

	return FUNC1(inode->i_mode);
}