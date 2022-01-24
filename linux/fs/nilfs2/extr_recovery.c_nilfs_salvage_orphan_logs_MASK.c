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
struct the_nilfs {int dummy; } ;
struct super_block {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct nilfs_recovery_info {scalar_t__ ri_lsegs_start; scalar_t__ ri_lsegs_end; scalar_t__ ri_need_recovery; int /*<<< orphan*/  ri_cno; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ NILFS_RECOVERY_ROLLFORWARD_DONE ; 
 int FUNC0 (struct super_block*,int /*<<< orphan*/ ,int,struct nilfs_root**) ; 
 int FUNC1 (struct super_block*,struct nilfs_root*) ; 
 int FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (struct the_nilfs*,struct super_block*,struct nilfs_root*,struct nilfs_recovery_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct the_nilfs*,struct nilfs_recovery_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct the_nilfs*,struct super_block*,struct nilfs_recovery_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_root*) ; 
 int /*<<< orphan*/  FUNC9 (struct the_nilfs*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct the_nilfs *nilfs,
			      struct super_block *sb,
			      struct nilfs_recovery_info *ri)
{
	struct nilfs_root *root;
	int err;

	if (ri->ri_lsegs_start == 0 || ri->ri_lsegs_end == 0)
		return 0;

	err = FUNC0(sb, ri->ri_cno, true, &root);
	if (FUNC10(err)) {
		FUNC6(sb, KERN_ERR,
			  "error %d loading the latest checkpoint", err);
		return err;
	}

	err = FUNC4(nilfs, sb, root, ri);
	if (FUNC10(err))
		goto failed;

	if (ri->ri_need_recovery == NILFS_RECOVERY_ROLLFORWARD_DONE) {
		err = FUNC7(nilfs, sb, ri);
		if (FUNC10(err)) {
			FUNC6(sb, KERN_ERR,
				  "error %d preparing segment for recovery",
				  err);
			goto failed;
		}

		err = FUNC1(sb, root);
		if (FUNC10(err))
			goto failed;

		FUNC9(nilfs);
		err = FUNC2(sb);
		FUNC3(sb);

		if (FUNC10(err)) {
			FUNC6(sb, KERN_ERR,
				  "error %d writing segment for recovery",
				  err);
			goto failed;
		}

		FUNC5(nilfs, ri);
	}

 failed:
	FUNC8(root);
	return err;
}