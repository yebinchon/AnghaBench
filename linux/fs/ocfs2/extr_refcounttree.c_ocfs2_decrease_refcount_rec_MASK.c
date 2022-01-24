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
typedef  scalar_t__ u64 ;
struct ocfs2_refcount_rec {int /*<<< orphan*/  r_refcount; int /*<<< orphan*/  r_clusters; int /*<<< orphan*/  r_cpos; } ;
struct TYPE_2__ {int /*<<< orphan*/  rl_used; struct ocfs2_refcount_rec* rl_recs; } ;
struct ocfs2_refcount_block {TYPE_1__ rf_records; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int,int,int) ; 
 scalar_t__ FUNC8 (struct ocfs2_caching_info*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_refcount_rec*,int,int,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,unsigned long long,unsigned int) ; 

__attribute__((used)) static int FUNC12(handle_t *handle,
				struct ocfs2_caching_info *ci,
				struct buffer_head *ref_root_bh,
				struct buffer_head *ref_leaf_bh,
				int index, u64 cpos, unsigned int len,
				struct ocfs2_alloc_context *meta_ac,
				struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret;
	struct ocfs2_refcount_block *rb =
			(struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
	struct ocfs2_refcount_rec *rec = &rb->rf_records.rl_recs[index];

	FUNC0(cpos < FUNC5(rec->r_cpos));
	FUNC0(cpos + len >
	       FUNC5(rec->r_cpos) + FUNC4(rec->r_clusters));

	FUNC11(
		(unsigned long long)FUNC8(ci),
		(unsigned long long)cpos, len);

	if (cpos == FUNC5(rec->r_cpos) &&
	    len == FUNC4(rec->r_clusters))
		ret = FUNC7(handle, ci,
						ref_leaf_bh, index, 1, -1);
	else {
		struct ocfs2_refcount_rec split = *rec;
		split.r_cpos = FUNC2(cpos);
		split.r_clusters = FUNC1(len);

		FUNC3(&split.r_refcount, -1);

		ret = FUNC10(handle, ci,
					       ref_root_bh, ref_leaf_bh,
					       &split, index, 1,
					       meta_ac, dealloc);
	}

	if (ret) {
		FUNC6(ret);
		goto out;
	}

	/* Remove the leaf refcount block if it contains no refcount record. */
	if (!rb->rf_records.rl_used && ref_leaf_bh != ref_root_bh) {
		ret = FUNC9(handle, ci, ref_root_bh,
						   ref_leaf_bh, meta_ac,
						   dealloc);
		if (ret)
			FUNC6(ret);
	}

out:
	return ret;
}