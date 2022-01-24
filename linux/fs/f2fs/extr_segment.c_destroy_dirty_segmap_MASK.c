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
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * dirty_info; } ;

/* Variables and functions */
 struct dirty_seglist_info* FUNC0 (struct f2fs_sb_info*) ; 
 int NR_DIRTY_TYPE ; 
 TYPE_1__* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dirty_seglist_info*) ; 

__attribute__((used)) static void FUNC5(struct f2fs_sb_info *sbi)
{
	struct dirty_seglist_info *dirty_i = FUNC0(sbi);
	int i;

	if (!dirty_i)
		return;

	/* discard pre-free/dirty segments list */
	for (i = 0; i < NR_DIRTY_TYPE; i++)
		FUNC3(sbi, i);

	FUNC2(sbi);
	FUNC1(sbi)->dirty_info = NULL;
	FUNC4(dirty_i);
}