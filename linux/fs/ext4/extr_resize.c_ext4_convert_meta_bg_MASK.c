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
struct inode {int i_blocks; int i_blkbits; } ;
struct ext4_super_block {int /*<<< orphan*/  s_first_meta_bg; scalar_t__ s_reserved_gdt_blocks; } ;
struct ext4_sb_info {int s_cluster_bits; int /*<<< orphan*/  s_groups_count; struct ext4_super_block* s_es; int /*<<< orphan*/  s_sbh; } ;
struct ext4_inode_info {scalar_t__* i_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int EPERM ; 
 int EXT4_DIND_BLOCK ; 
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 int /*<<< orphan*/  EXT4_HT_RESIZE ; 
 struct ext4_inode_info* FUNC1 (struct inode*) ; 
 int EXT4_N_BLOCKS ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct super_block*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct super_block *sb, struct inode *inode)
{
	handle_t *handle;
	struct ext4_sb_info *sbi = FUNC2(sb);
	struct ext4_super_block *es = sbi->s_es;
	struct ext4_inode_info *ei = FUNC1(inode);
	ext4_fsblk_t nr;
	int i, ret, err = 0;
	int credits = 1;

	FUNC14(sb, KERN_INFO, "Converting file system to meta_bg");
	if (inode) {
		if (es->s_reserved_gdt_blocks) {
			FUNC7(sb, "Unexpected non-zero "
				   "s_reserved_gdt_blocks");
			return -EPERM;
		}

		/* Do a quick sanity check of the resize inode */
		if (inode->i_blocks != 1 << (inode->i_blkbits -
					     (9 - sbi->s_cluster_bits)))
			goto invalid_resize_inode;
		for (i = 0; i < EXT4_N_BLOCKS; i++) {
			if (i == EXT4_DIND_BLOCK) {
				if (ei->i_data[i])
					continue;
				else
					goto invalid_resize_inode;
			}
			if (ei->i_data[i])
				goto invalid_resize_inode;
		}
		credits += 3;	/* block bitmap, bg descriptor, resize inode */
	}

	handle = FUNC11(sb, EXT4_HT_RESIZE, credits);
	if (FUNC3(handle))
		return FUNC4(handle);

	FUNC0(sbi->s_sbh, "get_write_access");
	err = FUNC10(handle, sbi->s_sbh);
	if (err)
		goto errout;

	FUNC6(sb);
	FUNC15(sb);
	sbi->s_es->s_first_meta_bg =
		FUNC5(FUNC18(sb, sbi->s_groups_count));

	err = FUNC9(handle, sb);
	if (err) {
		FUNC16(sb, err);
		goto errout;
	}

	if (inode) {
		nr = FUNC17(ei->i_data[EXT4_DIND_BLOCK]);
		FUNC8(handle, inode, NULL, nr, 1,
				 EXT4_FREE_BLOCKS_METADATA |
				 EXT4_FREE_BLOCKS_FORGET);
		ei->i_data[EXT4_DIND_BLOCK] = 0;
		inode->i_blocks = 0;

		err = FUNC13(handle, inode);
		if (err)
			FUNC16(sb, err);
	}

errout:
	ret = FUNC12(handle);
	if (!err)
		err = ret;
	return ret;

invalid_resize_inode:
	FUNC7(sb, "corrupted/inconsistent resize inode");
	return -EINVAL;
}