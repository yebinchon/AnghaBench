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
typedef  unsigned int u32 ;
struct ocfs2_super {unsigned int local_alloc_bits; int /*<<< orphan*/  slot_num; TYPE_3__* local_alloc_bh; int /*<<< orphan*/  sb; int /*<<< orphan*/  osb_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_used; int /*<<< orphan*/  i_total; } ;
struct TYPE_5__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; int /*<<< orphan*/  i_blkno; } ;
struct ocfs2_alloc_context {scalar_t__ ac_max_block; TYPE_3__* ac_bh; int /*<<< orphan*/  ac_which; int /*<<< orphan*/  ac_alloc_slot; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  LOCAL_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  OCFS2_AC_USE_LOCAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,scalar_t__) ; 
 struct inode* FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*) ; 
 scalar_t__ FUNC11 (struct ocfs2_dinode*) ; 
 int FUNC12 (struct ocfs2_super*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long long,unsigned int,int /*<<< orphan*/ ,int) ; 

int FUNC16(struct ocfs2_super *osb,
				   u32 bits_wanted,
				   struct ocfs2_alloc_context *ac)
{
	int status;
	struct ocfs2_dinode *alloc;
	struct inode *local_alloc_inode;
	unsigned int free_bits;

	FUNC0(!ac);

	local_alloc_inode =
		FUNC9(osb,
					    LOCAL_ALLOC_SYSTEM_INODE,
					    osb->slot_num);
	if (!local_alloc_inode) {
		status = -ENOENT;
		FUNC7(status);
		goto bail;
	}

	FUNC2(local_alloc_inode);

	/*
	 * We must double check state and allocator bits because
	 * another process may have changed them while holding i_mutex.
	 */
	FUNC13(&osb->osb_lock);
	if (!FUNC10(osb) ||
	    (bits_wanted > osb->local_alloc_bits)) {
		FUNC14(&osb->osb_lock);
		status = -ENOSPC;
		goto bail;
	}
	FUNC14(&osb->osb_lock);

	alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;

#ifdef CONFIG_OCFS2_DEBUG_FS
	if (le32_to_cpu(alloc->id1.bitmap1.i_used) !=
	    ocfs2_local_alloc_count_bits(alloc)) {
		status = ocfs2_error(osb->sb, "local alloc inode %llu says it has %u used bits, but a count shows %u\n",
				(unsigned long long)le64_to_cpu(alloc->i_blkno),
				le32_to_cpu(alloc->id1.bitmap1.i_used),
				ocfs2_local_alloc_count_bits(alloc));
		goto bail;
	}
#endif

	free_bits = FUNC5(alloc->id1.bitmap1.i_total) -
		FUNC5(alloc->id1.bitmap1.i_used);
	if (bits_wanted > free_bits) {
		/* uhoh, window change time. */
		status =
			FUNC12(osb, local_alloc_inode);
		if (status < 0) {
			if (status != -ENOSPC)
				FUNC7(status);
			goto bail;
		}

		/*
		 * Under certain conditions, the window slide code
		 * might have reduced the number of bits available or
		 * disabled the the local alloc entirely. Re-check
		 * here and return -ENOSPC if necessary.
		 */
		status = -ENOSPC;
		if (!FUNC10(osb))
			goto bail;

		free_bits = FUNC5(alloc->id1.bitmap1.i_total) -
			FUNC5(alloc->id1.bitmap1.i_used);
		if (bits_wanted > free_bits)
			goto bail;
	}

	ac->ac_inode = local_alloc_inode;
	/* We should never use localalloc from another slot */
	ac->ac_alloc_slot = osb->slot_num;
	ac->ac_which = OCFS2_AC_USE_LOCAL;
	FUNC1(osb->local_alloc_bh);
	ac->ac_bh = osb->local_alloc_bh;
	status = 0;
bail:
	if (status < 0 && local_alloc_inode) {
		FUNC3(local_alloc_inode);
		FUNC4(local_alloc_inode);
	}

	FUNC15(
		(unsigned long long)ac->ac_max_block,
		bits_wanted, osb->slot_num, status);

	if (status)
		FUNC7(status);
	return status;
}