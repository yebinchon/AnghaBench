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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int s_blocksize; } ;
struct minix_sb_info {int s_imap_blocks; unsigned long s_ninodes; struct buffer_head** s_imap; } ;
struct inode {unsigned long i_ino; scalar_t__ i_blocks; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  bitmap_lock ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct inode const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC8 (struct inode*) ; 
 struct minix_sb_info* FUNC9 (struct super_block*) ; 
 scalar_t__ FUNC10 (unsigned long,int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

struct inode *FUNC15(const struct inode *dir, umode_t mode, int *error)
{
	struct super_block *sb = dir->i_sb;
	struct minix_sb_info *sbi = FUNC9(sb);
	struct inode *inode = FUNC11(sb);
	struct buffer_head * bh;
	int bits_per_zone = 8 * sb->s_blocksize;
	unsigned long j;
	int i;

	if (!inode) {
		*error = -ENOMEM;
		return NULL;
	}
	j = bits_per_zone;
	bh = NULL;
	*error = -ENOSPC;
	FUNC13(&bitmap_lock);
	for (i = 0; i < sbi->s_imap_blocks; i++) {
		bh = sbi->s_imap[i];
		j = FUNC7(bh->b_data, bits_per_zone);
		if (j < bits_per_zone)
			break;
	}
	if (!bh || j >= bits_per_zone) {
		FUNC14(&bitmap_lock);
		FUNC3(inode);
		return NULL;
	}
	if (FUNC10(j, bh->b_data)) {	/* shouldn't happen */
		FUNC14(&bitmap_lock);
		FUNC12("minix_new_inode: bit already set\n");
		FUNC3(inode);
		return NULL;
	}
	FUNC14(&bitmap_lock);
	FUNC4(bh);
	j += i * bits_per_zone;
	if (!j || j > sbi->s_ninodes) {
		FUNC3(inode);
		return NULL;
	}
	FUNC1(inode, dir, mode);
	inode->i_ino = j;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC0(inode);
	inode->i_blocks = 0;
	FUNC6(&FUNC8(inode)->u, 0, sizeof(FUNC8(inode)->u));
	FUNC2(inode);
	FUNC5(inode);

	*error = 0;
	return inode;
}