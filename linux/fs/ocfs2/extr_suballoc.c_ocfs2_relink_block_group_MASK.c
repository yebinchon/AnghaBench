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
typedef  scalar_t__ u64 ;
typedef  size_t u16 ;
struct ocfs2_group_desc {void* bg_next_group; void* bg_blkno; } ;
struct TYPE_5__ {TYPE_1__* cl_recs; } ;
struct TYPE_6__ {TYPE_2__ i_chain; } ;
struct ocfs2_dinode {TYPE_3__ id2; void* i_blkno; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {void* c_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_group_desc*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 void* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long,size_t,unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC10(handle_t *handle,
				    struct inode *alloc_inode,
				    struct buffer_head *fe_bh,
				    struct buffer_head *bg_bh,
				    struct buffer_head *prev_bg_bh,
				    u16 chain)
{
	int status;
	/* there is a really tiny chance the journal calls could fail,
	 * but we wouldn't want inconsistent blocks in *any* case. */
	u64 bg_ptr, prev_bg_ptr;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) fe_bh->b_data;
	struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) bg_bh->b_data;
	struct ocfs2_group_desc *prev_bg = (struct ocfs2_group_desc *) prev_bg_bh->b_data;

	/* The caller got these descriptors from
	 * ocfs2_read_group_descriptor().  Any corruption is a code bug. */
	FUNC0(!FUNC2(bg));
	FUNC0(!FUNC2(prev_bg));

	FUNC9(
		(unsigned long long)FUNC4(fe->i_blkno), chain,
		(unsigned long long)FUNC4(bg->bg_blkno),
		(unsigned long long)FUNC4(prev_bg->bg_blkno));

	bg_ptr = FUNC4(bg->bg_next_group);
	prev_bg_ptr = FUNC4(prev_bg->bg_next_group);

	status = FUNC7(handle, FUNC1(alloc_inode),
					 prev_bg_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0)
		goto out;

	prev_bg->bg_next_group = bg->bg_next_group;
	FUNC8(handle, prev_bg_bh);

	status = FUNC7(handle, FUNC1(alloc_inode),
					 bg_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0)
		goto out_rollback_prev_bg;

	bg->bg_next_group = fe->id2.i_chain.cl_recs[chain].c_blkno;
	FUNC8(handle, bg_bh);

	status = FUNC6(handle, FUNC1(alloc_inode),
					 fe_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0)
		goto out_rollback_bg;

	fe->id2.i_chain.cl_recs[chain].c_blkno = bg->bg_blkno;
	FUNC8(handle, fe_bh);

out:
	if (status < 0)
		FUNC5(status);
	return status;

out_rollback_bg:
	bg->bg_next_group = FUNC3(bg_ptr);
out_rollback_prev_bg:
	prev_bg->bg_next_group = FUNC3(prev_bg_ptr);
	goto out;
}