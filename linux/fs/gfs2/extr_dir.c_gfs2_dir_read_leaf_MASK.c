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
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ar_loccookie; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_leaf {scalar_t__ lf_entries; int /*<<< orphan*/  lf_next; scalar_t__ lf_depth; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct dirent_gather {unsigned int offset; struct gfs2_dirent const** pdent; } ;
struct dir_context {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_size; scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 unsigned int GFS2_DIR_MAX_DEPTH ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct gfs2_dirent*) ; 
 int FUNC4 (struct gfs2_dirent*) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int FUNC8 (struct gfs2_inode*,struct dir_context*,struct gfs2_dirent**,unsigned int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,char*,unsigned long long,unsigned int,unsigned int) ; 
 int FUNC10 (struct gfs2_inode*,scalar_t__,struct buffer_head**) ; 
 struct buffer_head** FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_dirent_gather ; 
 struct gfs2_dirent* FUNC13 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dirent_gather*) ; 
 int FUNC14 (struct gfs2_sbd*,struct buffer_head*,unsigned int,struct gfs2_dirent**,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head**) ; 

__attribute__((used)) static int FUNC16(struct inode *inode, struct dir_context *ctx,
			      int *copied, unsigned *depth,
			      u64 leaf_no)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);
	struct buffer_head *bh;
	struct gfs2_leaf *lf;
	unsigned entries = 0, entries2 = 0;
	unsigned leaves = 0, leaf = 0, offset, sort_offset;
	struct gfs2_dirent **darr, *dent;
	struct dirent_gather g;
	struct buffer_head **larr;
	int error, i, need_sort = 0, sort_id;
	u64 lfn = leaf_no;

	do {
		error = FUNC10(ip, lfn, &bh);
		if (error)
			goto out;
		lf = (struct gfs2_leaf *)bh->b_data;
		if (leaves == 0)
			*depth = FUNC5(lf->lf_depth);
		entries += FUNC5(lf->lf_entries);
		leaves++;
		lfn = FUNC6(lf->lf_next);
		FUNC7(bh);
	} while(lfn);

	if (*depth < GFS2_DIR_MAX_DEPTH || !sdp->sd_args.ar_loccookie) {
		need_sort = 1;
		sort_offset = 0;
	}

	if (!entries)
		return 0;

	error = -ENOMEM;
	/*
	 * The extra 99 entries are not normally used, but are a buffer
	 * zone in case the number of entries in the leaf is corrupt.
	 * 99 is the maximum number of entries that can fit in a single
	 * leaf block.
	 */
	larr = FUNC11((leaves + entries + 99) * sizeof(void *));
	if (!larr)
		goto out;
	darr = (struct gfs2_dirent **)(larr + leaves);
	g.pdent = (const struct gfs2_dirent **)darr;
	g.offset = 0;
	lfn = leaf_no;

	do {
		error = FUNC10(ip, lfn, &bh);
		if (error)
			goto out_free;
		lf = (struct gfs2_leaf *)bh->b_data;
		lfn = FUNC6(lf->lf_next);
		if (lf->lf_entries) {
			offset = g.offset;
			entries2 += FUNC5(lf->lf_entries);
			dent = FUNC13(inode, bh->b_data, bh->b_size,
						gfs2_dirent_gather, NULL, &g);
			error = FUNC4(dent);
			if (FUNC3(dent))
				goto out_free;
			if (entries2 != g.offset) {
				FUNC9(sdp, "Number of entries corrupt in dir "
						"leaf %llu, entries2 (%u) != "
						"g.offset (%u)\n",
					(unsigned long long)bh->b_blocknr,
					entries2, g.offset);
				FUNC12(ip);
				error = -EIO;
				goto out_free;
			}
			error = 0;
			sort_id = FUNC14(sdp, bh, leaf, &darr[offset],
						   FUNC5(lf->lf_entries));
			if (!need_sort && sort_id >= 0) {
				need_sort = 1;
				sort_offset = offset + sort_id;
			}
			larr[leaf++] = bh;
		} else {
			larr[leaf++] = NULL;
			FUNC7(bh);
		}
	} while(lfn);

	FUNC0(entries2 != entries);
	error = FUNC8(ip, ctx, darr, entries, need_sort ?
				sort_offset : entries, copied);
out_free:
	for(i = 0; i < leaf; i++)
		FUNC7(larr[i]);
	FUNC15(larr);
out:
	return error;
}