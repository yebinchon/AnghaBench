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
struct the_nilfs {int /*<<< orphan*/  ns_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SB_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nilfs_super_block**) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct super_block*) ; 
 int FUNC4 (struct the_nilfs*) ; 
 struct nilfs_super_block** FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC7 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_super_block*,struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, int wait)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_super_block **sbp;
	int err = 0;

	/* This function is called when super block should be written back */
	if (wait)
		err = FUNC3(sb);

	FUNC0(&nilfs->ns_sem);
	if (FUNC6(nilfs)) {
		sbp = FUNC5(sb, FUNC7(nilfs));
		if (FUNC1(sbp)) {
			FUNC8(sbp[0], nilfs);
			FUNC2(sb, NILFS_SB_COMMIT);
		}
	}
	FUNC9(&nilfs->ns_sem);

	if (!err)
		err = FUNC4(nilfs);

	return err;
}