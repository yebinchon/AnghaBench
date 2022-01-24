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
typedef  int u64 ;
struct the_nilfs {int ns_blocksize_bits; int ns_blocks_per_segment; int ns_blocksize; int /*<<< orphan*/  ns_bdev; scalar_t__ ns_nsegments; } ;
struct nilfs_segment_usage {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct fstrim_range {int len; int minlen; int start; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  int sector_t ;
struct TYPE_4__ {size_t mi_entry_size; int /*<<< orphan*/  mi_sem; } ;
struct TYPE_3__ {struct the_nilfs* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct the_nilfs*,int,int*,int*) ; 
 int FUNC7 (struct the_nilfs*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_segment_usage*) ; 
 struct nilfs_segment_usage* FUNC9 (struct inode*,int,struct buffer_head*,void*) ; 
 int FUNC10 (struct inode*,int,int /*<<< orphan*/ ,struct buffer_head**) ; 
 size_t FUNC11 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct inode *sufile, struct fstrim_range *range)
{
	struct the_nilfs *nilfs = sufile->i_sb->s_fs_info;
	struct buffer_head *su_bh;
	struct nilfs_segment_usage *su;
	void *kaddr;
	size_t n, i, susz = FUNC0(sufile)->mi_entry_size;
	sector_t seg_start, seg_end, start_block, end_block;
	sector_t start = 0, nblocks = 0;
	u64 segnum, segnum_end, minlen, len, max_blocks, ndiscarded = 0;
	int ret = 0;
	unsigned int sects_per_block;

	sects_per_block = (1 << nilfs->ns_blocksize_bits) /
			FUNC1(nilfs->ns_bdev);
	len = range->len >> nilfs->ns_blocksize_bits;
	minlen = range->minlen >> nilfs->ns_blocksize_bits;
	max_blocks = ((u64)nilfs->ns_nsegments * nilfs->ns_blocks_per_segment);

	if (!len || range->start >= max_blocks << nilfs->ns_blocksize_bits)
		return -EINVAL;

	start_block = (range->start + nilfs->ns_blocksize - 1) >>
			nilfs->ns_blocksize_bits;

	/*
	 * range->len can be very large (actually, it is set to
	 * ULLONG_MAX by default) - truncate upper end of the range
	 * carefully so as not to overflow.
	 */
	if (max_blocks - start_block < len)
		end_block = max_blocks - 1;
	else
		end_block = start_block + len - 1;

	segnum = FUNC7(nilfs, start_block);
	segnum_end = FUNC7(nilfs, end_block);

	FUNC3(&FUNC0(sufile)->mi_sem);

	while (segnum <= segnum_end) {
		n = FUNC11(sufile, segnum,
				segnum_end);

		ret = FUNC10(sufile, segnum, 0,
							   &su_bh);
		if (ret < 0) {
			if (ret != -ENOENT)
				goto out_sem;
			/* hole */
			segnum += n;
			continue;
		}

		kaddr = FUNC4(su_bh->b_page);
		su = FUNC9(sufile, segnum,
				su_bh, kaddr);
		for (i = 0; i < n; ++i, ++segnum, su = (void *)su + susz) {
			if (!FUNC8(su))
				continue;

			FUNC6(nilfs, segnum, &seg_start,
						&seg_end);

			if (!nblocks) {
				/* start new extent */
				start = seg_start;
				nblocks = seg_end - seg_start + 1;
				continue;
			}

			if (start + nblocks == seg_start) {
				/* add to previous extent */
				nblocks += seg_end - seg_start + 1;
				continue;
			}

			/* discard previous extent */
			if (start < start_block) {
				nblocks -= start_block - start;
				start = start_block;
			}

			if (nblocks >= minlen) {
				FUNC5(kaddr);

				ret = FUNC2(nilfs->ns_bdev,
						start * sects_per_block,
						nblocks * sects_per_block,
						GFP_NOFS, 0);
				if (ret < 0) {
					FUNC12(su_bh);
					goto out_sem;
				}

				ndiscarded += nblocks;
				kaddr = FUNC4(su_bh->b_page);
				su = FUNC9(
					sufile, segnum, su_bh, kaddr);
			}

			/* start new extent */
			start = seg_start;
			nblocks = seg_end - seg_start + 1;
		}
		FUNC5(kaddr);
		FUNC12(su_bh);
	}


	if (nblocks) {
		/* discard last extent */
		if (start < start_block) {
			nblocks -= start_block - start;
			start = start_block;
		}
		if (start + nblocks > end_block + 1)
			nblocks = end_block - start + 1;

		if (nblocks >= minlen) {
			ret = FUNC2(nilfs->ns_bdev,
					start * sects_per_block,
					nblocks * sects_per_block,
					GFP_NOFS, 0);
			if (!ret)
				ndiscarded += nblocks;
		}
	}

out_sem:
	FUNC13(&FUNC0(sufile)->mi_sem);

	range->len = ndiscarded << nilfs->ns_blocksize_bits;
	return ret;
}