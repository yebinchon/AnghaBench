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
struct f2fs_sb_info {int /*<<< orphan*/  nm_info; } ;
struct f2fs_nm_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct f2fs_sb_info*) ; 
 int FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 

int FUNC5(struct f2fs_sb_info *sbi)
{
	int err;

	sbi->nm_info = FUNC1(sbi, sizeof(struct f2fs_nm_info),
							GFP_KERNEL);
	if (!sbi->nm_info)
		return -ENOMEM;

	err = FUNC3(sbi);
	if (err)
		return err;

	err = FUNC2(sbi);
	if (err)
		return err;

	/* load free nid status from nat_bits table */
	FUNC4(sbi);

	return FUNC0(sbi, true, true);
}