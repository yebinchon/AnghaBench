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
struct f2fs_sb_info {int /*<<< orphan*/  s_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  f2fs_list_lock ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct f2fs_sb_info *sbi)
{
	FUNC1(sbi, FUNC0(sbi));

	FUNC3(&f2fs_list_lock);
	FUNC2(&sbi->s_list);
	FUNC4(&f2fs_list_lock);
}