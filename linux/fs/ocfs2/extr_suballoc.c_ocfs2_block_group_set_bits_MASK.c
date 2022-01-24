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
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_blkno; void* bg_bitmap; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_group_desc*) ; 
 int OCFS2_JOURNAL_ACCESS_UNDO ; 
 int OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned int) ; 

int FUNC13(handle_t *handle,
					     struct inode *alloc_inode,
					     struct ocfs2_group_desc *bg,
					     struct buffer_head *group_bh,
					     unsigned int bit_off,
					     unsigned int num_bits)
{
	int status;
	void *bitmap = bg->bg_bitmap;
	int journal_type = OCFS2_JOURNAL_ACCESS_WRITE;

	/* All callers get the descriptor via
	 * ocfs2_read_group_descriptor().  Any corruption is a code bug. */
	FUNC0(!FUNC2(bg));
	FUNC0(FUNC4(bg->bg_free_bits_count) < num_bits);

	FUNC12(bit_off, num_bits);

	if (FUNC8(alloc_inode))
		journal_type = OCFS2_JOURNAL_ACCESS_UNDO;

	status = FUNC9(handle,
					 FUNC1(alloc_inode),
					 group_bh,
					 journal_type);
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	FUNC3(&bg->bg_free_bits_count, -num_bits);
	if (FUNC4(bg->bg_free_bits_count) > FUNC4(bg->bg_bits)) {
		return FUNC7(alloc_inode->i_sb, "Group descriptor # %llu has bit count %u but claims %u are freed. num_bits %d\n",
				   (unsigned long long)FUNC5(bg->bg_blkno),
				   FUNC4(bg->bg_bits),
				   FUNC4(bg->bg_free_bits_count),
				   num_bits);
	}
	while(num_bits--)
		FUNC11(bit_off++, bitmap);

	FUNC10(handle, group_bh);

bail:
	return status;
}