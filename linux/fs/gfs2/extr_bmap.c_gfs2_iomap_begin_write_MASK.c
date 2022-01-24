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
struct metapath {int dummy; } ;
struct iomap {scalar_t__ type; int length; int /*<<< orphan*/ * page_ops; int /*<<< orphan*/  offset; } ;
struct inode {int i_blkbits; } ;
struct gfs2_trans {scalar_t__ tr_num_buf_new; } ;
struct gfs2_sbd {struct inode* sd_rindex; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ IOMAP_HOLE ; 
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 unsigned int RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 int RES_STATFS ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int FUNC5 (struct inode*,struct iomap*,struct metapath*) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,int,unsigned int,struct iomap*,struct metapath*) ; 
 int /*<<< orphan*/  gfs2_iomap_page_ops ; 
 scalar_t__ FUNC7 (struct gfs2_inode*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*) ; 
 scalar_t__ FUNC9 (struct gfs2_inode*) ; 
 int FUNC10 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*) ; 
 scalar_t__ FUNC12 (struct gfs2_inode*,unsigned int) ; 
 int FUNC13 (struct gfs2_sbd*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_sbd*) ; 
 int FUNC15 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_inode*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct metapath*) ; 

__attribute__((used)) static int FUNC19(struct inode *inode, loff_t pos,
				  loff_t length, unsigned flags,
				  struct iomap *iomap,
				  struct metapath *mp)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	bool unstuff;
	int ret;

	unstuff = FUNC8(ip) &&
		  pos + length > FUNC9(ip);

	if (unstuff || iomap->type == IOMAP_HOLE) {
		unsigned int data_blocks, ind_blocks;
		struct gfs2_alloc_parms ap = {};
		unsigned int rblocks;
		struct gfs2_trans *tr;

		FUNC16(ip, iomap->length, &data_blocks,
				       &ind_blocks);
		ap.target = data_blocks + ind_blocks;
		ret = FUNC10(ip, &ap);
		if (ret)
			return ret;

		ret = FUNC4(ip, &ap);
		if (ret)
			goto out_qunlock;

		rblocks = RES_DINODE + ind_blocks;
		if (FUNC7(ip))
			rblocks += data_blocks;
		if (ind_blocks || data_blocks)
			rblocks += RES_STATFS + RES_QUOTA;
		if (inode == sdp->sd_rindex)
			rblocks += 2 * RES_STATFS;
		rblocks += FUNC12(ip, data_blocks + ind_blocks);

		ret = FUNC13(sdp, rblocks,
				       iomap->length >> inode->i_blkbits);
		if (ret)
			goto out_trans_fail;

		if (unstuff) {
			ret = FUNC15(ip, NULL);
			if (ret)
				goto out_trans_end;
			FUNC18(mp);
			ret = FUNC6(inode, iomap->offset,
					     iomap->length, flags, iomap, mp);
			if (ret)
				goto out_trans_end;
		}

		if (iomap->type == IOMAP_HOLE) {
			ret = FUNC5(inode, iomap, mp);
			if (ret) {
				FUNC14(sdp);
				FUNC3(ip);
				FUNC17(ip, iomap->offset, iomap->length);
				goto out_qunlock;
			}
		}

		tr = current->journal_info;
		if (tr->tr_num_buf_new)
			FUNC2(inode, I_DIRTY_DATASYNC);

		FUNC14(sdp);
	}

	if (FUNC8(ip) || FUNC7(ip))
		iomap->page_ops = &gfs2_iomap_page_ops;
	return 0;

out_trans_end:
	FUNC14(sdp);
out_trans_fail:
	FUNC3(ip);
out_qunlock:
	FUNC11(ip);
	return ret;
}