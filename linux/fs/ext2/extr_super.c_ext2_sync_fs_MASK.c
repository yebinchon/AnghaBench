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
struct ext2_super_block {int s_state; } ;
struct ext2_sb_info {int /*<<< orphan*/  s_lock; struct ext2_super_block* s_es; } ;

/* Variables and functions */
 struct ext2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT2_VALID_FS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct ext2_super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb, int wait)
{
	struct ext2_sb_info *sbi = FUNC0(sb);
	struct ext2_super_block *es = FUNC0(sb)->s_es;

	/*
	 * Write quota structures to quota file, sync_blockdev() will write
	 * them to disk later
	 */
	FUNC2(sb, -1);

	FUNC5(&sbi->s_lock);
	if (es->s_state & FUNC1(EXT2_VALID_FS)) {
		FUNC3("setting valid to 0\n");
		es->s_state &= FUNC1(~EXT2_VALID_FS);
	}
	FUNC6(&sbi->s_lock);
	FUNC4(sb, es, wait);
	return 0;
}