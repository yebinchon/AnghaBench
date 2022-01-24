#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_bh; int /*<<< orphan*/  et_ci; int /*<<< orphan*/  et_root_el; } ;
struct ocfs2_alloc_context {scalar_t__ ac_which; int /*<<< orphan*/  ac_bh; int /*<<< orphan*/  ac_inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  enum ocfs2_alloc_restarted { ____Placeholder_ocfs2_alloc_restarted } ocfs2_alloc_restarted ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOSPC ; 
 scalar_t__ OCFS2_AC_USE_LOCAL ; 
 int /*<<< orphan*/  OCFS2_EXT_UNWRITTEN ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int RESTART_META ; 
 int RESTART_NONE ; 
 int RESTART_TRANS ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ocfs2_extent_tree*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int) ; 

int FUNC17(handle_t *handle,
				struct ocfs2_extent_tree *et,
				u32 *logical_offset,
				u32 clusters_to_add,
				int mark_unwritten,
				struct ocfs2_alloc_context *data_ac,
				struct ocfs2_alloc_context *meta_ac,
				enum ocfs2_alloc_restarted *reason_ret)
{
	int status = 0, err = 0;
	int need_free = 0;
	int free_extents;
	enum ocfs2_alloc_restarted reason = RESTART_NONE;
	u32 bit_off, num_bits;
	u64 block;
	u8 flags = 0;
	struct ocfs2_super *osb =
		FUNC1(FUNC12(et->et_ci));

	FUNC0(!clusters_to_add);

	if (mark_unwritten)
		flags = OCFS2_EXT_UNWRITTEN;

	free_extents = FUNC14(et);
	if (free_extents < 0) {
		status = free_extents;
		FUNC3(status);
		goto leave;
	}

	/* there are two cases which could cause us to EAGAIN in the
	 * we-need-more-metadata case:
	 * 1) we haven't reserved *any*
	 * 2) we are so fragmented, we've needed to add metadata too
	 *    many times. */
	if (!free_extents && !meta_ac) {
		err = -1;
		status = -EAGAIN;
		reason = RESTART_META;
		goto leave;
	} else if ((!free_extents)
		   && (FUNC4(meta_ac)
		       < FUNC7(et->et_root_el))) {
		err = -2;
		status = -EAGAIN;
		reason = RESTART_META;
		goto leave;
	}

	status = FUNC2(handle, data_ac, 1,
					clusters_to_add, &bit_off, &num_bits);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC3(status);
		goto leave;
	}

	FUNC0(num_bits > clusters_to_add);

	/* reserve our write early -- insert_extent may update the tree root */
	status = FUNC6(handle, et,
					      OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC3(status);
		need_free = 1;
		goto bail;
	}

	block = FUNC5(osb->sb, bit_off);
	FUNC15(
	     (unsigned long long)FUNC13(et->et_ci),
	     bit_off, num_bits);
	status = FUNC10(handle, et, *logical_offset, block,
				     num_bits, flags, meta_ac);
	if (status < 0) {
		FUNC3(status);
		need_free = 1;
		goto bail;
	}

	FUNC11(handle, et->et_root_bh);

	clusters_to_add -= num_bits;
	*logical_offset += num_bits;

	if (clusters_to_add) {
		err = clusters_to_add;
		status = -EAGAIN;
		reason = RESTART_TRANS;
	}

bail:
	if (need_free) {
		if (data_ac->ac_which == OCFS2_AC_USE_LOCAL)
			FUNC9(osb, handle, data_ac,
					bit_off, num_bits);
		else
			FUNC8(handle,
					data_ac->ac_inode,
					data_ac->ac_bh,
					FUNC5(osb->sb, bit_off),
					num_bits);
	}

leave:
	if (reason_ret)
		*reason_ret = reason;
	FUNC16(status, reason, err);
	return status;
}