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
struct sysv_sb_info {unsigned int s_ninodes; unsigned int s_fic_size; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_sb_total_free_inodes; void** s_sb_fic_count; } ;
struct sysv_inode {int dummy; } ;
struct super_block {int /*<<< orphan*/  s_id; } ;
struct inode {unsigned int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 unsigned int SYSV_ROOT_INO ; 
 struct sysv_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (struct sysv_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysv_sb_info*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC5 (struct sysv_sb_info*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct sysv_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 void** FUNC11 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct sysv_inode* FUNC12 (struct super_block*,unsigned int,struct buffer_head**) ; 

void FUNC13(struct inode * inode)
{
	struct super_block *sb = inode->i_sb;
	struct sysv_sb_info *sbi = FUNC0(sb);
	unsigned int ino;
	struct buffer_head * bh;
	struct sysv_inode * raw_inode;
	unsigned count;

	sb = inode->i_sb;
	ino = inode->i_ino;
	if (ino <= SYSV_ROOT_INO || ino > sbi->s_ninodes) {
		FUNC10("sysv_free_inode: inode 0,1,2 or nonexistent inode\n");
		return;
	}
	raw_inode = FUNC12(sb, ino, &bh);
	if (!raw_inode) {
		FUNC10("sysv_free_inode: unable to read inode block on device "
		       "%s\n", inode->i_sb->s_id);
		return;
	}
	FUNC8(&sbi->s_lock);
	count = FUNC5(sbi, *sbi->s_sb_fic_count);
	if (count < sbi->s_fic_size) {
		*FUNC11(sb,count++) = FUNC2(sbi, ino);
		*sbi->s_sb_fic_count = FUNC2(sbi, count);
	}
	FUNC4(sbi, sbi->s_sb_total_free_inodes, 1);
	FUNC3(sb);
	FUNC7(raw_inode, 0, sizeof(struct sysv_inode));
	FUNC6(bh);
	FUNC9(&sbi->s_lock);
	FUNC1(bh);
}