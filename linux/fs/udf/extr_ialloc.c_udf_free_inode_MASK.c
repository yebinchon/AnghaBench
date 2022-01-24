#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; } ;
struct super_block {int dummy; } ;
struct logicalVolIntegrityDescImpUse {int /*<<< orphan*/  numFiles; int /*<<< orphan*/  numDirs; } ;
struct inode {int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_location; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct udf_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct logicalVolIntegrityDescImpUse* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

void FUNC9(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct udf_sb_info *sbi = FUNC2(sb);
	struct logicalVolIntegrityDescImpUse *lvidiu = FUNC7(sb);

	if (lvidiu) {
		FUNC4(&sbi->s_alloc_mutex);
		if (FUNC0(inode->i_mode))
			FUNC3(&lvidiu->numDirs, -1);
		else
			FUNC3(&lvidiu->numFiles, -1);
		FUNC8(sb);
		FUNC5(&sbi->s_alloc_mutex);
	}

	FUNC6(sb, NULL, &FUNC1(inode)->i_location, 0, 1);
}