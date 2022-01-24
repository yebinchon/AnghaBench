#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {scalar_t__ local_alloc_bits; scalar_t__ bitmap_cpg; int /*<<< orphan*/  local_alloc_state; struct buffer_head* local_alloc_bh; int /*<<< orphan*/  slot_num; int /*<<< orphan*/  sb; } ;
struct ocfs2_local_alloc {scalar_t__ la_size; scalar_t__ la_bm_off; } ;
struct TYPE_4__ {scalar_t__ i_total; scalar_t__ i_used; } ;
struct TYPE_5__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; scalar_t__ i_flags; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LOCAL_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int /*<<< orphan*/  OCFS2_BH_IGNORE_CACHE ; 
 int OCFS2_BITMAP_FL ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_LA_ENABLED ; 
 struct ocfs2_local_alloc* FUNC1 (struct ocfs2_dinode*) ; 
 int OCFS2_LOCAL_ALLOC_FL ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct inode* FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

int FUNC15(struct ocfs2_super *osb)
{
	int status = 0;
	struct ocfs2_dinode *alloc = NULL;
	struct buffer_head *alloc_bh = NULL;
	u32 num_used;
	struct inode *inode = NULL;
	struct ocfs2_local_alloc *la;

	if (osb->local_alloc_bits == 0)
		goto bail;

	if (osb->local_alloc_bits >= osb->bitmap_cpg) {
		FUNC6(ML_NOTICE, "Requested local alloc window %d is larger "
		     "than max possible %u. Using defaults.\n",
		     osb->local_alloc_bits, (osb->bitmap_cpg - 1));
		osb->local_alloc_bits =
			FUNC12(osb->sb,
						    FUNC9(osb));
	}

	/* read the alloc off disk */
	inode = FUNC8(osb, LOCAL_ALLOC_SYSTEM_INODE,
					    osb->slot_num);
	if (!inode) {
		status = -EINVAL;
		FUNC7(status);
		goto bail;
	}

	status = FUNC13(inode, &alloc_bh,
					     OCFS2_BH_IGNORE_CACHE);
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

	alloc = (struct ocfs2_dinode *) alloc_bh->b_data;
	la = FUNC1(alloc);

	if (!(FUNC5(alloc->i_flags) &
	    (OCFS2_LOCAL_ALLOC_FL|OCFS2_BITMAP_FL))) {
		FUNC6(ML_ERROR, "Invalid local alloc inode, %llu\n",
		     (unsigned long long)FUNC0(inode)->ip_blkno);
		status = -EINVAL;
		goto bail;
	}

	if ((la->la_size == 0) ||
	    (FUNC4(la->la_size) > FUNC11(inode->i_sb))) {
		FUNC6(ML_ERROR, "Local alloc size is invalid (la_size = %u)\n",
		     FUNC4(la->la_size));
		status = -EINVAL;
		goto bail;
	}

	/* do a little verification. */
	num_used = FUNC10(alloc);

	/* hopefully the local alloc has always been recovered before
	 * we load it. */
	if (num_used
	    || alloc->id1.bitmap1.i_used
	    || alloc->id1.bitmap1.i_total
	    || la->la_bm_off) {
		FUNC6(ML_ERROR, "inconsistent detected, clean journal with"
		     " unrecovered local alloc, please run fsck.ocfs2!\n"
		     "found = %u, set = %u, taken = %u, off = %u\n",
		     num_used, FUNC5(alloc->id1.bitmap1.i_used),
		     FUNC5(alloc->id1.bitmap1.i_total),
		     FUNC1(alloc)->la_bm_off);

		status = -EINVAL;
		goto bail;
	}

	osb->local_alloc_bh = alloc_bh;
	osb->local_alloc_state = OCFS2_LA_ENABLED;

bail:
	if (status < 0)
		FUNC2(alloc_bh);
	FUNC3(inode);

	FUNC14(osb->local_alloc_bits);

	if (status)
		FUNC7(status);
	return status;
}