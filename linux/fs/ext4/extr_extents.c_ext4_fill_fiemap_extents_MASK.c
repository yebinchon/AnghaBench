#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct extent_status {scalar_t__ es_lblk; scalar_t__ es_len; scalar_t__ es_pblk; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; int /*<<< orphan*/ * p_hdr; } ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  unsigned char __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  i_data_sem; } ;
struct TYPE_3__ {unsigned char s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,...) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 scalar_t__ EXT_MAX_BLOCKS ; 
 unsigned int FIEMAP_EXTENT_DELALLOC ; 
 unsigned int FIEMAP_EXTENT_LAST ; 
 unsigned int FIEMAP_EXTENT_UNKNOWN ; 
 unsigned int FIEMAP_EXTENT_UNWRITTEN ; 
 scalar_t__ FUNC4 (struct ext4_ext_path*) ; 
 int FUNC5 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC8 (struct ext4_extent*) ; 
 scalar_t__ FUNC9 (struct ext4_extent*) ; 
 scalar_t__ FUNC10 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC11 (struct ext4_extent*) ; 
 scalar_t__ FUNC12 (struct inode*,struct extent_status*) ; 
 struct ext4_ext_path* FUNC13 (struct inode*,scalar_t__,struct ext4_ext_path**,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*) ; 
 int FUNC15 (struct fiemap_extent_info*,unsigned char,unsigned char,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct inode *inode,
				    ext4_lblk_t block, ext4_lblk_t num,
				    struct fiemap_extent_info *fieinfo)
{
	struct ext4_ext_path *path = NULL;
	struct ext4_extent *ex;
	struct extent_status es;
	ext4_lblk_t next, next_del, start = 0, end = 0;
	ext4_lblk_t last = block + num;
	int exists, depth = 0, err = 0;
	unsigned int flags = 0;
	unsigned char blksize_bits = inode->i_sb->s_blocksize_bits;

	while (block < last && block != EXT_MAX_BLOCKS) {
		num = last - block;
		/* find extent for this block */
		FUNC6(&FUNC3(inode)->i_data_sem);

		path = FUNC13(inode, block, &path, 0);
		if (FUNC4(path)) {
			FUNC19(&FUNC3(inode)->i_data_sem);
			err = FUNC5(path);
			path = NULL;
			break;
		}

		depth = FUNC14(inode);
		if (FUNC18(path[depth].p_hdr == NULL)) {
			FUNC19(&FUNC3(inode)->i_data_sem);
			FUNC2(inode, "path[%d].p_hdr == NULL", depth);
			err = -EFSCORRUPTED;
			break;
		}
		ex = path[depth].p_ext;
		next = FUNC10(path);

		flags = 0;
		exists = 0;
		if (!ex) {
			/* there is no extent yet, so try to allocate
			 * all requested space */
			start = block;
			end = block + num;
		} else if (FUNC17(ex->ee_block) > block) {
			/* need to allocate space before found extent */
			start = block;
			end = FUNC17(ex->ee_block);
			if (block + num < end)
				end = block + num;
		} else if (block >= FUNC17(ex->ee_block)
					+ FUNC8(ex)) {
			/* need to allocate space after found extent */
			start = block;
			end = block + num;
			if (end >= next)
				end = next;
		} else if (block >= FUNC17(ex->ee_block)) {
			/*
			 * some part of requested space is covered
			 * by found extent
			 */
			start = block;
			end = FUNC17(ex->ee_block)
				+ FUNC8(ex);
			if (block + num < end)
				end = block + num;
			exists = 1;
		} else {
			FUNC0();
		}
		FUNC1(end <= start);

		if (!exists) {
			es.es_lblk = start;
			es.es_len = end - start;
			es.es_pblk = 0;
		} else {
			es.es_lblk = FUNC17(ex->ee_block);
			es.es_len = FUNC8(ex);
			es.es_pblk = FUNC11(ex);
			if (FUNC9(ex))
				flags |= FIEMAP_EXTENT_UNWRITTEN;
		}

		/*
		 * Find delayed extent and update es accordingly. We call
		 * it even in !exists case to find out whether es is the
		 * last existing extent or not.
		 */
		next_del = FUNC12(inode, &es);
		if (!exists && next_del) {
			exists = 1;
			flags |= (FIEMAP_EXTENT_DELALLOC |
				  FIEMAP_EXTENT_UNKNOWN);
		}
		FUNC19(&FUNC3(inode)->i_data_sem);

		if (FUNC18(es.es_len == 0)) {
			FUNC2(inode, "es.es_len == 0");
			err = -EFSCORRUPTED;
			break;
		}

		/*
		 * This is possible iff next == next_del == EXT_MAX_BLOCKS.
		 * we need to check next == EXT_MAX_BLOCKS because it is
		 * possible that an extent is with unwritten and delayed
		 * status due to when an extent is delayed allocated and
		 * is allocated by fallocate status tree will track both of
		 * them in a extent.
		 *
		 * So we could return a unwritten and delayed extent, and
		 * its block is equal to 'next'.
		 */
		if (next == next_del && next == EXT_MAX_BLOCKS) {
			flags |= FIEMAP_EXTENT_LAST;
			if (FUNC18(next_del != EXT_MAX_BLOCKS ||
				     next != EXT_MAX_BLOCKS)) {
				FUNC2(inode,
						 "next extent == %u, next "
						 "delalloc extent = %u",
						 next, next_del);
				err = -EFSCORRUPTED;
				break;
			}
		}

		if (exists) {
			err = FUNC15(fieinfo,
				(__u64)es.es_lblk << blksize_bits,
				(__u64)es.es_pblk << blksize_bits,
				(__u64)es.es_len << blksize_bits,
				flags);
			if (err < 0)
				break;
			if (err == 1) {
				err = 0;
				break;
			}
		}

		block = es.es_lblk + es.es_len;
	}

	FUNC7(path);
	FUNC16(path);
	return err;
}