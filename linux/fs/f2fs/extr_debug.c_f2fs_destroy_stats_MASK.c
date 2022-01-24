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
struct f2fs_stat_info {int /*<<< orphan*/  stat_list; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct f2fs_stat_info* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  f2fs_stat_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_stat_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct f2fs_sb_info *sbi)
{
	struct f2fs_stat_info *si = FUNC0(sbi);

	FUNC3(&f2fs_stat_mutex);
	FUNC2(&si->stat_list);
	FUNC4(&f2fs_stat_mutex);

	FUNC1(si);
}