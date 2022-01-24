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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_suballoc_result {int /*<<< orphan*/  sr_blkno; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; int ac_bits_wanted; scalar_t__ ac_which; int ac_find_loc_only; struct ocfs2_suballoc_result* ac_find_loc_priv; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OCFS2_AC_USE_INODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_SUBALLOC_ALLOC ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_suballoc_result*) ; 
 struct ocfs2_suballoc_result* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ocfs2_alloc_context*,int /*<<< orphan*/ *,int,int,struct ocfs2_suballoc_result*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct buffer_head*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 

int FUNC12(struct inode *dir,
			     struct buffer_head *parent_fe_bh,
			     struct ocfs2_alloc_context *ac,
			     u64 *fe_blkno)
{
	int ret;
	handle_t *handle = NULL;
	struct ocfs2_suballoc_result *res;

	FUNC0(!ac);
	FUNC0(ac->ac_bits_given != 0);
	FUNC0(ac->ac_bits_wanted != 1);
	FUNC0(ac->ac_which != OCFS2_AC_USE_INODE);

	res = FUNC5(sizeof(*res), GFP_NOFS);
	if (res == NULL) {
		ret = -ENOMEM;
		FUNC6(ret);
		goto out;
	}

	FUNC9(dir, parent_fe_bh, ac);

	/*
	 * The handle started here is for chain relink. Alternatively,
	 * we could just disable relink for these calls.
	 */
	handle = FUNC10(FUNC2(dir->i_sb), OCFS2_SUBALLOC_ALLOC);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		handle = NULL;
		FUNC6(ret);
		goto out;
	}

	/*
	 * This will instruct ocfs2_claim_suballoc_bits and
	 * ocfs2_search_one_group to search but save actual allocation
	 * for later.
	 */
	ac->ac_find_loc_only = 1;

	ret = FUNC7(ac, handle, 1, 1, res);
	if (ret < 0) {
		FUNC6(ret);
		goto out;
	}

	ac->ac_find_loc_priv = res;
	*fe_blkno = res->sr_blkno;
	FUNC11(handle, dir, 0);
out:
	if (handle)
		FUNC8(FUNC2(dir->i_sb), handle);

	if (ret)
		FUNC4(res);

	return ret;
}