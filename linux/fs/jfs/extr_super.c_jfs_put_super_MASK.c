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
struct super_block {int dummy; } ;
struct jfs_sb_info {TYPE_1__* direct_inode; int /*<<< orphan*/  nls_tab; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct jfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	int rc;

	FUNC3("In jfs_put_super");

	FUNC4(sb);

	rc = FUNC5(sb);
	if (rc)
		FUNC2("jfs_umount failed with return code %d", rc);

	FUNC8(sbi->nls_tab);

	FUNC7(sbi->direct_inode->i_mapping, 0);
	FUNC1(sbi->direct_inode);

	FUNC6(sbi);
}