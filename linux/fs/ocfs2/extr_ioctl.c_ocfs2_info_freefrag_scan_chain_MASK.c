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
typedef  scalar_t__ u64 ;
typedef  unsigned int u32 ;
struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ffs_free_chunks; } ;
struct ocfs2_info_freefrag {unsigned int iff_chunksize; TYPE_1__ iff_ffs; int /*<<< orphan*/  iff_req; } ;
struct ocfs2_group_desc {scalar_t__ bg_bitmap; int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_next_group; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_chain_rec {int /*<<< orphan*/  c_blkno; int /*<<< orphan*/  c_free; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_info_freefrag*,unsigned int) ; 
 int FUNC7 (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ; 
 int FUNC8 (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ; 
 int FUNC9 (unsigned int,unsigned long*) ; 

__attribute__((used)) static int FUNC10(struct ocfs2_super *osb,
					  struct inode *gb_inode,
					  struct ocfs2_dinode *gb_dinode,
					  struct ocfs2_chain_rec *rec,
					  struct ocfs2_info_freefrag *ffg,
					  u32 chunks_in_group)
{
	int status = 0, used;
	u64 blkno;

	struct buffer_head *bh = NULL;
	struct ocfs2_group_desc *bg = NULL;

	unsigned int max_bits, num_clusters;
	unsigned int offset = 0, cluster, chunk;
	unsigned int chunk_free, last_chunksize = 0;

	if (!FUNC2(rec->c_free))
		goto bail;

	do {
		if (!bg)
			blkno = FUNC3(rec->c_blkno);
		else
			blkno = FUNC3(bg->bg_next_group);

		if (bh) {
			FUNC0(bh);
			bh = NULL;
		}

		if (FUNC5(&ffg->iff_req))
			status = FUNC8(gb_inode,
							     gb_dinode,
							     blkno, &bh);
		else
			status = FUNC7(osb, blkno, 1, &bh);

		if (status < 0) {
			FUNC4(ML_ERROR, "Can't read the group descriptor # "
			     "%llu from device.", (unsigned long long)blkno);
			status = -EIO;
			goto bail;
		}

		bg = (struct ocfs2_group_desc *)bh->b_data;

		if (!FUNC1(bg->bg_free_bits_count))
			continue;

		max_bits = FUNC1(bg->bg_bits);
		offset = 0;

		for (chunk = 0; chunk < chunks_in_group; chunk++) {
			/*
			 * last chunk may be not an entire one.
			 */
			if ((offset + ffg->iff_chunksize) > max_bits)
				num_clusters = max_bits - offset;
			else
				num_clusters = ffg->iff_chunksize;

			chunk_free = 0;
			for (cluster = 0; cluster < num_clusters; cluster++) {
				used = FUNC9(offset,
						(unsigned long *)bg->bg_bitmap);
				/*
				 * - chunk_free counts free clusters in #N chunk.
				 * - last_chunksize records the size(in) clusters
				 *   for the last real free chunk being counted.
				 */
				if (!used) {
					last_chunksize++;
					chunk_free++;
				}

				if (used && last_chunksize) {
					FUNC6(ffg,
							      last_chunksize);
					last_chunksize = 0;
				}

				offset++;
			}

			if (chunk_free == ffg->iff_chunksize)
				ffg->iff_ffs.ffs_free_chunks++;
		}

		/*
		 * need to update the info for last free chunk.
		 */
		if (last_chunksize)
			FUNC6(ffg, last_chunksize);

	} while (FUNC3(bg->bg_next_group));

bail:
	FUNC0(bh);

	return status;
}