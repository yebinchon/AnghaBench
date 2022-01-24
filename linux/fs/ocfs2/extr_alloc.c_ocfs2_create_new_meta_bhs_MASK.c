#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_super {TYPE_2__* sb; int /*<<< orphan*/  fs_generation; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct TYPE_4__ {void* l_count; } ;
struct ocfs2_extent_block {TYPE_1__ h_list; void* h_suballoc_bit; void* h_suballoc_loc; void* h_suballoc_slot; int /*<<< orphan*/  h_fs_generation; void* h_blkno; int /*<<< orphan*/  h_signature; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/  ac_alloc_slot; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCFS2_EXTENT_BLOCK_SIGNATURE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 struct buffer_head* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(handle_t *handle,
				     struct ocfs2_extent_tree *et,
				     int wanted,
				     struct ocfs2_alloc_context *meta_ac,
				     struct buffer_head *bhs[])
{
	int count, status, i;
	u16 suballoc_bit_start;
	u32 num_got;
	u64 suballoc_loc, first_blkno;
	struct ocfs2_super *osb =
		FUNC0(FUNC11(et->et_ci));
	struct ocfs2_extent_block *eb;

	count = 0;
	while (count < wanted) {
		status = FUNC7(handle,
					      meta_ac,
					      wanted - count,
					      &suballoc_loc,
					      &suballoc_bit_start,
					      &num_got,
					      &first_blkno);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}

		for(i = count;  i < (num_got + count); i++) {
			bhs[i] = FUNC13(osb->sb, first_blkno);
			if (bhs[i] == NULL) {
				status = -ENOMEM;
				FUNC6(status);
				goto bail;
			}
			FUNC12(et->et_ci, bhs[i]);

			status = FUNC9(handle, et->et_ci,
							 bhs[i],
							 OCFS2_JOURNAL_ACCESS_CREATE);
			if (status < 0) {
				FUNC6(status);
				goto bail;
			}

			FUNC5(bhs[i]->b_data, 0, osb->sb->s_blocksize);
			eb = (struct ocfs2_extent_block *) bhs[i]->b_data;
			/* Ok, setup the minimal stuff here. */
			FUNC14(eb->h_signature, OCFS2_EXTENT_BLOCK_SIGNATURE);
			eb->h_blkno = FUNC4(first_blkno);
			eb->h_fs_generation = FUNC3(osb->fs_generation);
			eb->h_suballoc_slot =
				FUNC2(meta_ac->ac_alloc_slot);
			eb->h_suballoc_loc = FUNC4(suballoc_loc);
			eb->h_suballoc_bit = FUNC2(suballoc_bit_start);
			eb->h_list.l_count =
				FUNC2(FUNC8(osb->sb));

			suballoc_bit_start++;
			first_blkno++;

			/* We'll also be dirtied by the caller, so
			 * this isn't absolutely necessary. */
			FUNC10(handle, bhs[i]);
		}

		count += num_got;
	}

	status = 0;
bail:
	if (status < 0) {
		for(i = 0; i < wanted; i++) {
			FUNC1(bhs[i]);
			bhs[i] = NULL;
		}
		FUNC6(status);
	}
	return status;
}