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
typedef  int u64 ;
struct ocfs2_super {int s_clustersize_bits; int /*<<< orphan*/  sys_root_inode; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_blkno; int /*<<< orphan*/  bg_next_group; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_total; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct ocfs2_chain_list {struct ocfs2_chain_rec* cl_recs; int /*<<< orphan*/  cl_next_free_rec; } ;
struct TYPE_5__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_rec {int /*<<< orphan*/  c_blkno; } ;
struct inode {TYPE_4__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  namebuf ;
struct TYPE_8__ {int s_blocksize_bits; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int GLOBAL_BITMAP_SYSTEM_INODE ; 
 struct ocfs2_super* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct ocfs2_super*,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
					 u64 vict_blkno,
					 int type, int slot,
					 int *vict_bit,
					 struct buffer_head **ret_bh)
{
	int ret, i, bits_per_unit = 0;
	u64 blkno;
	char namebuf[40];

	struct ocfs2_super *osb = FUNC0(inode->i_sb);
	struct buffer_head *ac_bh = NULL, *gd_bh = NULL;
	struct ocfs2_chain_list *cl;
	struct ocfs2_chain_rec *rec;
	struct ocfs2_dinode *ac_dinode;
	struct ocfs2_group_desc *bg;

	FUNC9(namebuf, sizeof(namebuf), type, slot);
	ret = FUNC7(osb->sys_root_inode, namebuf,
					 FUNC10(namebuf), &blkno);
	if (ret) {
		ret = -ENOENT;
		goto out;
	}

	ret = FUNC8(osb, blkno, 1, &ac_bh);
	if (ret) {
		FUNC6(ret);
		goto out;
	}

	ac_dinode = (struct ocfs2_dinode *)ac_bh->b_data;
	cl = &(ac_dinode->id2.i_chain);
	rec = &(cl->cl_recs[0]);

	if (type == GLOBAL_BITMAP_SYSTEM_INODE)
		bits_per_unit = osb->s_clustersize_bits -
					inode->i_sb->s_blocksize_bits;
	/*
	 * 'vict_blkno' was out of the valid range.
	 */
	if ((vict_blkno < FUNC4(rec->c_blkno)) ||
	    (vict_blkno >= ((u64)FUNC3(ac_dinode->id1.bitmap1.i_total) <<
				bits_per_unit))) {
		ret = -EINVAL;
		goto out;
	}

	for (i = 0; i < FUNC2(cl->cl_next_free_rec); i++) {

		rec = &(cl->cl_recs[i]);
		if (!rec)
			continue;

		bg = NULL;

		do {
			if (!bg)
				blkno = FUNC4(rec->c_blkno);
			else
				blkno = FUNC4(bg->bg_next_group);

			if (gd_bh) {
				FUNC1(gd_bh);
				gd_bh = NULL;
			}

			ret = FUNC8(osb, blkno, 1, &gd_bh);
			if (ret) {
				FUNC6(ret);
				goto out;
			}

			bg = (struct ocfs2_group_desc *)gd_bh->b_data;

			if (vict_blkno < (FUNC4(bg->bg_blkno) +
						FUNC2(bg->bg_bits))) {

				*ret_bh = gd_bh;
				*vict_bit = (vict_blkno - blkno) >>
							bits_per_unit;
				FUNC5(0, "find the victim group: #%llu, "
				     "total_bits: %u, vict_bit: %u\n",
				     blkno, FUNC2(bg->bg_bits),
				     *vict_bit);
				goto out;
			}

		} while (FUNC4(bg->bg_next_group));
	}

	ret = -EINVAL;
out:
	FUNC1(ac_bh);

	/*
	 * caller has to release the gd_bh properly.
	 */
	return ret;
}