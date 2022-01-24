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
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_blkno; scalar_t__ bg_bitmap; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ b_committed_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_group_desc*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_UNDO ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 TYPE_1__* FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned long*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC16(handle_t *handle,
					struct inode *alloc_inode,
					struct ocfs2_group_desc *bg,
					struct buffer_head *group_bh,
					unsigned int bit_off,
					unsigned int num_bits,
					void (*undo_fn)(unsigned int bit,
							unsigned long *bmap))
{
	int status;
	unsigned int tmp;
	struct ocfs2_group_desc *undo_bg = NULL;

	/* The caller got this descriptor from
	 * ocfs2_read_group_descriptor().  Any corruption is a code bug. */
	FUNC0(!FUNC2(bg));

	FUNC15(bit_off, num_bits);

	FUNC0(undo_fn && !FUNC12(alloc_inode));
	status = FUNC13(handle, FUNC1(alloc_inode),
					 group_bh,
					 undo_fn ?
					 OCFS2_JOURNAL_ACCESS_UNDO :
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC9(status);
		goto bail;
	}

	if (undo_fn) {
		FUNC4(group_bh);
		undo_bg = (struct ocfs2_group_desc *)
					FUNC3(group_bh)->b_committed_data;
		FUNC0(!undo_bg);
	}

	tmp = num_bits;
	while(tmp--) {
		FUNC10((bit_off + tmp),
				(unsigned long *) bg->bg_bitmap);
		if (undo_fn)
			undo_fn(bit_off + tmp,
				(unsigned long *) undo_bg->bg_bitmap);
	}
	FUNC6(&bg->bg_free_bits_count, num_bits);
	if (FUNC7(bg->bg_free_bits_count) > FUNC7(bg->bg_bits)) {
		if (undo_fn)
			FUNC5(group_bh);
		return FUNC11(alloc_inode->i_sb, "Group descriptor # %llu has bit count %u but claims %u are freed. num_bits %d\n",
				   (unsigned long long)FUNC8(bg->bg_blkno),
				   FUNC7(bg->bg_bits),
				   FUNC7(bg->bg_free_bits_count),
				   num_bits);
	}

	if (undo_fn)
		FUNC5(group_bh);

	FUNC14(handle, group_bh);
bail:
	return status;
}