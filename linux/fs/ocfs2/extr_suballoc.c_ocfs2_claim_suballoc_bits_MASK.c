#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct ocfs2_suballoc_result {void* sr_bg_blkno; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_chain; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_total; int /*<<< orphan*/  i_used; } ;
struct TYPE_9__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {TYPE_4__ id2; TYPE_3__ id1; int /*<<< orphan*/  i_blkno; } ;
struct ocfs2_chain_list {TYPE_5__* cl_recs; int /*<<< orphan*/  cl_next_free_rec; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; scalar_t__ ac_bits_wanted; size_t ac_chain; int ac_disable_chain_relink; void* ac_last_group; TYPE_6__* ac_inode; TYPE_1__* ac_bh; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_sb; } ;
struct TYPE_11__ {int /*<<< orphan*/  c_free; } ;
struct TYPE_7__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dinode*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,scalar_t__) ; 
 size_t FUNC7 (struct ocfs2_chain_list*) ; 
 void* FUNC8 (struct ocfs2_suballoc_result*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 int FUNC10 (struct ocfs2_alloc_context*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,struct ocfs2_suballoc_result*,size_t*) ; 
 int FUNC11 (struct ocfs2_alloc_context*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,struct ocfs2_suballoc_result*,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (size_t) ; 

__attribute__((used)) static int FUNC13(struct ocfs2_alloc_context *ac,
				     handle_t *handle,
				     u32 bits_wanted,
				     u32 min_bits,
				     struct ocfs2_suballoc_result *res)
{
	int status;
	u16 victim, i;
	u16 bits_left = 0;
	u64 hint = ac->ac_last_group;
	struct ocfs2_chain_list *cl;
	struct ocfs2_dinode *fe;

	FUNC0(ac->ac_bits_given >= ac->ac_bits_wanted);
	FUNC0(bits_wanted > (ac->ac_bits_wanted - ac->ac_bits_given));
	FUNC0(!ac->ac_bh);

	fe = (struct ocfs2_dinode *) ac->ac_bh->b_data;

	/* The bh was validated by the inode read during
	 * ocfs2_reserve_suballoc_bits().  Any corruption is a code bug. */
	FUNC0(!FUNC1(fe));

	if (FUNC3(fe->id1.bitmap1.i_used) >=
	    FUNC3(fe->id1.bitmap1.i_total)) {
		status = FUNC6(ac->ac_inode->i_sb,
				     "Chain allocator dinode %llu has %u used bits but only %u total\n",
				     (unsigned long long)FUNC4(fe->i_blkno),
				     FUNC3(fe->id1.bitmap1.i_used),
				     FUNC3(fe->id1.bitmap1.i_total));
		goto bail;
	}

	res->sr_bg_blkno = hint;
	if (res->sr_bg_blkno) {
		/* Attempt to short-circuit the usual search mechanism
		 * by jumping straight to the most recently used
		 * allocation group. This helps us maintain some
		 * contiguousness across allocations. */
		status = FUNC11(ac, handle, bits_wanted,
						min_bits, res, &bits_left);
		if (!status)
			goto set_hint;
		if (status < 0 && status != -ENOSPC) {
			FUNC5(status);
			goto bail;
		}
	}

	cl = (struct ocfs2_chain_list *) &fe->id2.i_chain;

	victim = FUNC7(cl);
	ac->ac_chain = victim;

	status = FUNC10(ac, handle, bits_wanted, min_bits,
				    res, &bits_left);
	if (!status) {
		if (FUNC9(ac->ac_inode))
			hint = res->sr_bg_blkno;
		else
			hint = FUNC8(res);
		goto set_hint;
	}
	if (status < 0 && status != -ENOSPC) {
		FUNC5(status);
		goto bail;
	}

	FUNC12(victim);

	/* If we didn't pick a good victim, then just default to
	 * searching each chain in order. Don't allow chain relinking
	 * because we only calculate enough journal credits for one
	 * relink per alloc. */
	ac->ac_disable_chain_relink = 1;
	for (i = 0; i < FUNC2(cl->cl_next_free_rec); i ++) {
		if (i == victim)
			continue;
		if (!cl->cl_recs[i].c_free)
			continue;

		ac->ac_chain = i;
		status = FUNC10(ac, handle, bits_wanted, min_bits,
					    res, &bits_left);
		if (!status) {
			hint = FUNC8(res);
			break;
		}
		if (status < 0 && status != -ENOSPC) {
			FUNC5(status);
			goto bail;
		}
	}

set_hint:
	if (status != -ENOSPC) {
		/* If the next search of this group is not likely to
		 * yield a suitable extent, then we reset the last
		 * group hint so as to not waste a disk read */
		if (bits_left < min_bits)
			ac->ac_last_group = 0;
		else
			ac->ac_last_group = hint;
	}

bail:
	if (status)
		FUNC5(status);
	return status;
}