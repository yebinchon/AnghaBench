#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; } ;
struct inode {int i_blocks; struct super_block* i_sb; } ;
struct ext4_iloc {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_group_t ;
typedef  int ext4_fsblk_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_8__ {int /*<<< orphan*/ * i_data; } ;
struct TYPE_7__ {int s_cluster_bits; int s_gdb_count; TYPE_2__* s_sbh; TYPE_1__* s_es; } ;
struct TYPE_6__ {int b_blocknr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*) ; 
 int EXT4_DIND_BLOCK ; 
 TYPE_4__* FUNC3 (struct inode*) ; 
 TYPE_3__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 struct buffer_head* FUNC13 (struct super_block*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,char*,int,long) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head**) ; 
 struct buffer_head** FUNC16 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct super_block*,int,struct buffer_head*) ; 

__attribute__((used)) static int FUNC20(handle_t *handle, struct inode *inode,
			      ext4_group_t group)
{
	struct super_block *sb = inode->i_sb;
	int reserved_gdb =FUNC17(FUNC4(sb)->s_es->s_reserved_gdt_blocks);
	int cluster_bits = FUNC4(sb)->s_cluster_bits;
	struct buffer_head **primary;
	struct buffer_head *dind;
	struct ext4_iloc iloc;
	ext4_fsblk_t blk;
	__le32 *data, *end;
	int gdbackups = 0;
	int res, i;
	int err;

	primary = FUNC16(reserved_gdb, sizeof(*primary), GFP_NOFS);
	if (!primary)
		return -ENOMEM;

	data = FUNC3(inode)->i_data + EXT4_DIND_BLOCK;
	dind = FUNC13(sb, FUNC18(*data), 0);
	if (FUNC5(dind)) {
		err = FUNC6(dind);
		dind = NULL;
		goto exit_free;
	}

	blk = FUNC4(sb)->s_sbh->b_blocknr + 1 + FUNC4(sb)->s_gdb_count;
	data = (__le32 *)dind->b_data + (FUNC4(sb)->s_gdb_count %
					 FUNC1(sb));
	end = (__le32 *)dind->b_data + FUNC1(sb);

	/* Get each reserved primary GDT block and verify it holds backups */
	for (res = 0; res < reserved_gdb; res++, blk++) {
		if (FUNC18(*data) != blk) {
			FUNC14(sb, "reserved block %llu"
				     " not at offset %ld",
				     blk,
				     (long)(data - (__le32 *)dind->b_data));
			err = -EINVAL;
			goto exit_bh;
		}
		primary[res] = FUNC13(sb, blk, 0);
		if (FUNC5(primary[res])) {
			err = FUNC6(primary[res]);
			primary[res] = NULL;
			goto exit_bh;
		}
		gdbackups = FUNC19(sb, group, primary[res]);
		if (gdbackups < 0) {
			FUNC7(primary[res]);
			err = gdbackups;
			goto exit_bh;
		}
		if (++data >= end)
			data = (__le32 *)dind->b_data;
	}

	for (i = 0; i < reserved_gdb; i++) {
		FUNC0(primary[i], "get_write_access");
		if ((err = FUNC10(handle, primary[i])))
			goto exit_bh;
	}

	if ((err = FUNC12(handle, inode, &iloc)))
		goto exit_bh;

	/*
	 * Finally we can add each of the reserved backup GDT blocks from
	 * the new group to its reserved primary GDT block.
	 */
	blk = group * FUNC2(sb);
	for (i = 0; i < reserved_gdb; i++) {
		int err2;
		data = (__le32 *)primary[i]->b_data;
		/* printk("reserving backup %lu[%u] = %lu\n",
		       primary[i]->b_blocknr, gdbackups,
		       blk + primary[i]->b_blocknr); */
		data[gdbackups] = FUNC8(blk + primary[i]->b_blocknr);
		err2 = FUNC9(handle, NULL, primary[i]);
		if (!err)
			err = err2;
	}

	inode->i_blocks += reserved_gdb * sb->s_blocksize >> (9 - cluster_bits);
	FUNC11(handle, inode, &iloc);

exit_bh:
	while (--res >= 0)
		FUNC7(primary[res]);
	FUNC7(dind);

exit_free:
	FUNC15(primary);

	return err;
}