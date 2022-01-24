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
struct ext4_sb_info {unsigned int s_group_info_size; struct ext4_group_info*** s_group_info; } ;
struct ext4_group_info {int dummy; } ;
typedef  int ext4_group_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_group_info***) ; 
 struct ext4_group_info*** FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_group_info***,struct ext4_group_info***,int) ; 
 unsigned int FUNC8 (int) ; 

int FUNC9(struct super_block *sb, ext4_group_t ngroups)
{
	struct ext4_sb_info *sbi = FUNC2(sb);
	unsigned size;
	struct ext4_group_info ***new_groupinfo;

	size = (ngroups + FUNC0(sb) - 1) >>
		FUNC1(sb);
	if (size <= sbi->s_group_info_size)
		return 0;

	size = FUNC8(sizeof(*sbi->s_group_info) * size);
	new_groupinfo = FUNC6(size, GFP_KERNEL);
	if (!new_groupinfo) {
		FUNC4(sb, KERN_ERR, "can't allocate buddy meta group");
		return -ENOMEM;
	}
	if (sbi->s_group_info) {
		FUNC7(new_groupinfo, sbi->s_group_info,
		       sbi->s_group_info_size * sizeof(*sbi->s_group_info));
		FUNC5(sbi->s_group_info);
	}
	sbi->s_group_info = new_groupinfo;
	sbi->s_group_info_size = size / sizeof(*sbi->s_group_info);
	FUNC3("allocated s_groupinfo array for %d meta_bg's\n", 
		   sbi->s_group_info_size);
	return 0;
}