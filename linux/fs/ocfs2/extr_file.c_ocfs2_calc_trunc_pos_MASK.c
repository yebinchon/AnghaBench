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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 

__attribute__((used)) static void FUNC4(struct inode *inode,
				 struct ocfs2_extent_list *el,
				 struct ocfs2_extent_rec *rec,
				 u32 trunc_start, u32 *trunc_cpos,
				 u32 *trunc_len, u32 *trunc_end,
				 u64 *blkno, int *done)
{
	int ret = 0;
	u32 coff, range;

	range = FUNC0(rec->e_cpos) + FUNC3(el, rec);

	if (FUNC0(rec->e_cpos) >= trunc_start) {
		/*
		 * remove an entire extent record.
		 */
		*trunc_cpos = FUNC0(rec->e_cpos);
		/*
		 * Skip holes if any.
		 */
		if (range < *trunc_end)
			*trunc_end = range;
		*trunc_len = *trunc_end - FUNC0(rec->e_cpos);
		*blkno = FUNC1(rec->e_blkno);
		*trunc_end = FUNC0(rec->e_cpos);
	} else if (range > trunc_start) {
		/*
		 * remove a partial extent record, which means we're
		 * removing the last extent record.
		 */
		*trunc_cpos = trunc_start;
		/*
		 * skip hole if any.
		 */
		if (range < *trunc_end)
			*trunc_end = range;
		*trunc_len = *trunc_end - trunc_start;
		coff = trunc_start - FUNC0(rec->e_cpos);
		*blkno = FUNC1(rec->e_blkno) +
				FUNC2(inode->i_sb, coff);
		*trunc_end = trunc_start;
	} else {
		/*
		 * It may have two following possibilities:
		 *
		 * - last record has been removed
		 * - trunc_start was within a hole
		 *
		 * both two cases mean the completion of hole punching.
		 */
		ret = 1;
	}

	*done = ret;
}