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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct hugetlbfs_sb_info {scalar_t__ spool; } ;

/* Variables and functions */
 struct hugetlbfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hugetlbfs_sb_info*) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	struct hugetlbfs_sb_info *sbi = FUNC0(sb);

	if (sbi) {
		sb->s_fs_info = NULL;

		if (sbi->spool)
			FUNC1(sbi->spool);

		FUNC2(sbi);
	}
}