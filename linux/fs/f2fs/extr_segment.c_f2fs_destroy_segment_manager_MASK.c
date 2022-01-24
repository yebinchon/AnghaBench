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
struct f2fs_sm_info {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * sm_info; } ;

/* Variables and functions */
 struct f2fs_sm_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sm_info*) ; 

void FUNC8(struct f2fs_sb_info *sbi)
{
	struct f2fs_sm_info *sm_info = FUNC0(sbi);

	if (!sm_info)
		return;
	FUNC6(sbi, true);
	FUNC3(sbi);
	FUNC2(sbi);
	FUNC1(sbi);
	FUNC4(sbi);
	FUNC5(sbi);
	sbi->sm_info = NULL;
	FUNC7(sm_info);
}