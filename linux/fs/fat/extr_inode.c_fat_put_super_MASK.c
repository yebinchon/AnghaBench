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
struct super_block {int dummy; } ;
struct msdos_sb_info {int /*<<< orphan*/  rcu; int /*<<< orphan*/  fat_inode; int /*<<< orphan*/  fsinfo_inode; } ;

/* Variables and functions */
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delayed_free ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct msdos_sb_info *sbi = FUNC0(sb);

	FUNC2(sb, 0, 0);

	FUNC3(sbi->fsinfo_inode);
	FUNC3(sbi->fat_inode);

	FUNC1(&sbi->rcu, delayed_free);
}