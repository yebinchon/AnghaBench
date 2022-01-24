#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct treepath {int dummy; } ;
struct stat_data_v1 {int dummy; } ;
struct stat_data {int dummy; } ;
struct item_head {int /*<<< orphan*/  ih_key; } ;
struct TYPE_13__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_12__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {unsigned long i_blocks; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; void* i_generation; TYPE_5__ i_atime; TYPE_4__ i_mtime; TYPE_3__ i_ctime; int /*<<< orphan*/  i_size; TYPE_2__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_15__ {int /*<<< orphan*/  i_attrs; scalar_t__ i_first_direct_byte; int /*<<< orphan*/  i_flags; int /*<<< orphan*/ * i_jl; scalar_t__ i_trans_id; scalar_t__ i_prealloc_count; scalar_t__ i_prealloc_block; int /*<<< orphan*/  i_prealloc_list; } ;
struct TYPE_14__ {int /*<<< orphan*/  k_dir_id; } ;
struct TYPE_10__ {int s_blocksize; } ;
struct TYPE_9__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  KEY_FORMAT_3_6 ; 
 struct buffer_head* FUNC2 (struct treepath*) ; 
 TYPE_7__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  SD_V1_SIZE ; 
 int /*<<< orphan*/  SD_V2_SIZE ; 
 int /*<<< orphan*/  STAT_DATA_V1 ; 
 int /*<<< orphan*/  STAT_DATA_V2 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i_nopack_mask ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct buffer_head*,struct item_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct treepath*) ; 
 int /*<<< orphan*/  reiserfs_address_space_operations ; 
 int /*<<< orphan*/  reiserfs_dir_inode_operations ; 
 int /*<<< orphan*/  reiserfs_dir_operations ; 
 int /*<<< orphan*/  reiserfs_file_inode_operations ; 
 int /*<<< orphan*/  reiserfs_file_operations ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  reiserfs_special_inode_operations ; 
 int /*<<< orphan*/  reiserfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct stat_data_v1*) ; 
 unsigned long FUNC23 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC24 (struct stat_data_v1*) ; 
 scalar_t__ FUNC25 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC26 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC27 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC28 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC29 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC30 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC31 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC32 (struct stat_data_v1*) ; 
 int /*<<< orphan*/  FUNC33 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC34 (struct stat_data*) ; 
 int FUNC35 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC36 (struct stat_data*) ; 
 void* FUNC37 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC38 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC39 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC40 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC41 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC42 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC43 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC44 (struct stat_data*) ; 
 int /*<<< orphan*/  FUNC45 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC48 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC49 (struct inode*,int,int /*<<< orphan*/ ) ; 
 struct item_head* FUNC50 (struct treepath*) ; 

__attribute__((used)) static void FUNC51(struct inode *inode, struct treepath *path)
{
	struct buffer_head *bh;
	struct item_head *ih;
	__u32 rdev;

	bh = FUNC2(path);
	ih = FUNC50(path);

	FUNC10(FUNC1(inode), &ih->ih_key);

	FUNC0(&FUNC3(inode)->i_prealloc_list);
	FUNC3(inode)->i_flags = 0;
	FUNC3(inode)->i_prealloc_block = 0;
	FUNC3(inode)->i_prealloc_count = 0;
	FUNC3(inode)->i_trans_id = 0;
	FUNC3(inode)->i_jl = NULL;
	FUNC20(inode);

	if (FUNC48(ih)) {
		struct stat_data_v1 *sd =
		    (struct stat_data_v1 *)FUNC13(bh, ih);
		unsigned long blocks;

		FUNC45(inode, KEY_FORMAT_3_5);
		FUNC46(inode, STAT_DATA_V1);
		inode->i_mode = FUNC27(sd);
		FUNC47(inode, FUNC29(sd));
		FUNC12(inode, FUNC32(sd));
		FUNC11(inode, FUNC26(sd));
		inode->i_size = FUNC31(sd);
		inode->i_atime.tv_sec = FUNC22(sd);
		inode->i_mtime.tv_sec = FUNC28(sd);
		inode->i_ctime.tv_sec = FUNC24(sd);
		inode->i_atime.tv_nsec = 0;
		inode->i_ctime.tv_nsec = 0;
		inode->i_mtime.tv_nsec = 0;

		inode->i_blocks = FUNC23(sd);
		inode->i_generation = FUNC17(FUNC1(inode)->k_dir_id);
		blocks = (inode->i_size + 511) >> 9;
		blocks = FUNC9(blocks, inode->i_sb->s_blocksize >> 9);

		/*
		 * there was a bug in <=3.5.23 when i_blocks could take
		 * negative values. Starting from 3.5.17 this value could
		 * even be stored in stat data. For such files we set
		 * i_blocks based on file size. Just 2 notes: this can be
		 * wrong for sparse files. On-disk value will be only
		 * updated if file's inode will ever change
		 */
		if (inode->i_blocks > blocks) {
			inode->i_blocks = blocks;
		}

		rdev = FUNC30(sd);
		FUNC3(inode)->i_first_direct_byte =
		    FUNC25(sd);

		/*
		 * an early bug in the quota code can give us an odd
		 * number for the block count.  This is incorrect, fix it here.
		 */
		if (inode->i_blocks & 1) {
			inode->i_blocks++;
		}
		FUNC16(inode,
				FUNC49(inode, inode->i_blocks,
						   SD_V1_SIZE));
		/*
		 * nopack is initially zero for v1 objects. For v2 objects,
		 * nopack is initialised from sd_attrs
		 */
		FUNC3(inode)->i_flags &= ~i_nopack_mask;
	} else {
		/*
		 * new stat data found, but object may have old items
		 * (directories and symlinks)
		 */
		struct stat_data *sd = (struct stat_data *)FUNC13(bh, ih);

		inode->i_mode = FUNC39(sd);
		FUNC47(inode, FUNC41(sd));
		FUNC12(inode, FUNC44(sd));
		inode->i_size = FUNC43(sd);
		FUNC11(inode, FUNC38(sd));
		inode->i_mtime.tv_sec = FUNC40(sd);
		inode->i_atime.tv_sec = FUNC33(sd);
		inode->i_ctime.tv_sec = FUNC36(sd);
		inode->i_ctime.tv_nsec = 0;
		inode->i_mtime.tv_nsec = 0;
		inode->i_atime.tv_nsec = 0;
		inode->i_blocks = FUNC35(sd);
		rdev = FUNC42(sd);
		if (FUNC5(inode->i_mode) || FUNC4(inode->i_mode))
			inode->i_generation =
			    FUNC17(FUNC1(inode)->k_dir_id);
		else
			inode->i_generation = FUNC37(sd);

		if (FUNC6(inode->i_mode) || FUNC7(inode->i_mode))
			FUNC45(inode, KEY_FORMAT_3_5);
		else
			FUNC45(inode, KEY_FORMAT_3_6);
		FUNC3(inode)->i_first_direct_byte = 0;
		FUNC46(inode, STAT_DATA_V2);
		FUNC16(inode,
				FUNC49(inode, inode->i_blocks,
						   SD_V2_SIZE));
		/*
		 * read persistent inode attributes from sd and initialise
		 * generic inode flags from them
		 */
		FUNC3(inode)->i_attrs = FUNC34(sd);
		FUNC21(FUNC34(sd), inode);
	}

	FUNC19(path);
	if (FUNC8(inode->i_mode)) {
		inode->i_op = &reiserfs_file_inode_operations;
		inode->i_fop = &reiserfs_file_operations;
		inode->i_mapping->a_ops = &reiserfs_address_space_operations;
	} else if (FUNC6(inode->i_mode)) {
		inode->i_op = &reiserfs_dir_inode_operations;
		inode->i_fop = &reiserfs_dir_operations;
	} else if (FUNC7(inode->i_mode)) {
		inode->i_op = &reiserfs_symlink_inode_operations;
		FUNC15(inode);
		inode->i_mapping->a_ops = &reiserfs_address_space_operations;
	} else {
		inode->i_blocks = 0;
		inode->i_op = &reiserfs_special_inode_operations;
		FUNC14(inode, inode->i_mode, FUNC18(rdev));
	}
}