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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_refcount_rec {int /*<<< orphan*/  r_refcount; int /*<<< orphan*/  r_clusters; int /*<<< orphan*/  r_cpos; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ocfs2_cached_dealloc_ctxt*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,int,unsigned int,unsigned int,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC9 (struct ocfs2_caching_info*,struct buffer_head*,unsigned int,unsigned int,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ; 
 struct super_block* FUNC10 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC11 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long long,unsigned long long,unsigned int,int) ; 

__attribute__((used)) static int FUNC13(handle_t *handle,
				     struct ocfs2_caching_info *ci,
				     struct buffer_head *ref_root_bh,
				     u64 cpos, u32 len,
				     struct ocfs2_alloc_context *meta_ac,
				     struct ocfs2_cached_dealloc_ctxt *dealloc,
				     int delete)
{
	int ret = 0, index = 0;
	struct ocfs2_refcount_rec rec;
	unsigned int r_count = 0, r_len;
	struct super_block *sb = FUNC10(ci);
	struct buffer_head *ref_leaf_bh = NULL;

	FUNC12(
		(unsigned long long)FUNC11(ci),
		(unsigned long long)cpos, len, delete);

	while (len) {
		ret = FUNC9(ci, ref_root_bh,
					     cpos, len, &rec, &index,
					     &ref_leaf_bh);
		if (ret) {
			FUNC5(ret);
			goto out;
		}

		r_count = FUNC2(rec.r_refcount);
		FUNC0(r_count == 0);
		if (!delete)
			FUNC0(r_count > 1);

		r_len = FUNC4((u64)(cpos + len), FUNC3(rec.r_cpos) +
			      FUNC2(rec.r_clusters)) - cpos;

		ret = FUNC8(handle, ci, ref_root_bh,
						  ref_leaf_bh, index,
						  cpos, r_len,
						  meta_ac, dealloc);
		if (ret) {
			FUNC5(ret);
			goto out;
		}

		if (FUNC2(rec.r_refcount) == 1 && delete) {
			ret = FUNC6(dealloc,
					  FUNC7(sb, cpos),
							  r_len);
			if (ret) {
				FUNC5(ret);
				goto out;
			}
		}

		cpos += r_len;
		len -= r_len;
		FUNC1(ref_leaf_bh);
		ref_leaf_bh = NULL;
	}

out:
	FUNC1(ref_leaf_bh);
	return ret;
}