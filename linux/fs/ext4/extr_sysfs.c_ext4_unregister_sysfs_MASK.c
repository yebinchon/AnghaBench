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
struct super_block {int /*<<< orphan*/  s_id; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_kobj; scalar_t__ s_proc; } ;

/* Variables and functions */
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  ext4_proc_root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct super_block *sb)
{
	struct ext4_sb_info *sbi = FUNC0(sb);

	if (sbi->s_proc)
		FUNC2(sb->s_id, ext4_proc_root);
	FUNC1(&sbi->s_kobj);
}