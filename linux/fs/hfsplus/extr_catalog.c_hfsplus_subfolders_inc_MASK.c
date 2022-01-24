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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  subfolders; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct hfsplus_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HFSPLUS_SB_HFSX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct inode *dir)
{
	struct hfsplus_sb_info *sbi = FUNC1(dir->i_sb);

	if (FUNC2(HFSPLUS_SB_HFSX, &sbi->flags)) {
		/*
		 * Increment subfolder count. Note, the value is only meaningful
		 * for folders with HFSPLUS_HAS_FOLDER_COUNT flag set.
		 */
		FUNC0(dir)->subfolders++;
	}
}