#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  bitmap_data; int /*<<< orphan*/  local_data; } ;
struct ocfs2_super {int bitmap_cpg; TYPE_1__ alloc_stats; } ;
struct ocfs2_suballoc_result {int sr_blkno; int sr_bits; int /*<<< orphan*/  sr_bit_offset; int /*<<< orphan*/  sr_bg_blkno; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; scalar_t__ ac_bits_wanted; scalar_t__ ac_which; TYPE_2__* ac_inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ OCFS2_AC_USE_LOCAL ; 
 scalar_t__ OCFS2_AC_USE_MAIN ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,unsigned int,int*,int*) ; 
 int FUNC7 (struct ocfs2_alloc_context*,int /*<<< orphan*/ *,unsigned int,int,struct ocfs2_suballoc_result*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(handle_t *handle,
			   struct ocfs2_alloc_context *ac,
			   u32 min_clusters,
			   u32 max_clusters,
			   u32 *cluster_start,
			   u32 *num_clusters)
{
	int status;
	unsigned int bits_wanted = max_clusters;
	struct ocfs2_suballoc_result res = { .sr_blkno = 0, };
	struct ocfs2_super *osb = FUNC1(ac->ac_inode->i_sb);

	FUNC0(ac->ac_bits_given >= ac->ac_bits_wanted);

	FUNC0(ac->ac_which != OCFS2_AC_USE_LOCAL
	       && ac->ac_which != OCFS2_AC_USE_MAIN);

	if (ac->ac_which == OCFS2_AC_USE_LOCAL) {
		FUNC2(min_clusters > 1);

		status = FUNC6(osb,
						      handle,
						      ac,
						      bits_wanted,
						      cluster_start,
						      num_clusters);
		if (!status)
			FUNC3(&osb->alloc_stats.local_data);
	} else {
		if (min_clusters > (osb->bitmap_cpg - 1)) {
			/* The only paths asking for contiguousness
			 * should know about this already. */
			FUNC4(ML_ERROR, "minimum allocation requested %u exceeds "
			     "group bitmap size %u!\n", min_clusters,
			     osb->bitmap_cpg);
			status = -ENOSPC;
			goto bail;
		}
		/* clamp the current request down to a realistic size. */
		if (bits_wanted > (osb->bitmap_cpg - 1))
			bits_wanted = osb->bitmap_cpg - 1;

		status = FUNC7(ac,
						   handle,
						   bits_wanted,
						   min_clusters,
						   &res);
		if (!status) {
			FUNC0(res.sr_blkno); /* cluster alloc can't set */
			*cluster_start =
				FUNC8(ac->ac_inode,
								 res.sr_bg_blkno,
								 res.sr_bit_offset);
			FUNC3(&osb->alloc_stats.bitmap_data);
			*num_clusters = res.sr_bits;
		}
	}
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC5(status);
		goto bail;
	}

	ac->ac_bits_given += *num_clusters;

bail:
	if (status)
		FUNC5(status);
	return status;
}