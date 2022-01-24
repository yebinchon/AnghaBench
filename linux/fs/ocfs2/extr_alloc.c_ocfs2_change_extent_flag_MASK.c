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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int e_flags; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_path*) ; 
 struct super_block* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC12 (struct ocfs2_extent_tree*) ; 
 int FUNC13 (struct ocfs2_extent_list*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,int,struct ocfs2_extent_rec*,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 struct ocfs2_extent_list* FUNC15 (struct ocfs2_path*) ; 

int FUNC16(handle_t *handle,
			     struct ocfs2_extent_tree *et,
			     u32 cpos, u32 len, u32 phys,
			     struct ocfs2_alloc_context *meta_ac,
			     struct ocfs2_cached_dealloc_ctxt *dealloc,
			     int new_flags, int clear_flags)
{
	int ret, index;
	struct super_block *sb = FUNC10(et->et_ci);
	u64 start_blkno = FUNC6(sb, phys);
	struct ocfs2_extent_rec split_rec;
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_rec *rec;

	left_path = FUNC12(et);
	if (!left_path) {
		ret = -ENOMEM;
		FUNC5(ret);
		goto out;
	}

	ret = FUNC8(et->et_ci, left_path, cpos);
	if (ret) {
		FUNC5(ret);
		goto out;
	}
	el = FUNC15(left_path);

	index = FUNC13(el, cpos);
	if (index == -1) {
		FUNC7(sb,
			    "Owner %llu has an extent at cpos %u which can no longer be found\n",
			    (unsigned long long)FUNC11(et->et_ci),
			    cpos);
		ret = -EROFS;
		goto out;
	}

	ret = -EIO;
	rec = &el->l_recs[index];
	if (new_flags && (rec->e_flags & new_flags)) {
		FUNC4(ML_ERROR, "Owner %llu tried to set %d flags on an "
		     "extent that already had them\n",
		     (unsigned long long)FUNC11(et->et_ci),
		     new_flags);
		goto out;
	}

	if (clear_flags && !(rec->e_flags & clear_flags)) {
		FUNC4(ML_ERROR, "Owner %llu tried to clear %d flags on an "
		     "extent that didn't have them\n",
		     (unsigned long long)FUNC11(et->et_ci),
		     clear_flags);
		goto out;
	}

	FUNC3(&split_rec, 0, sizeof(struct ocfs2_extent_rec));
	split_rec.e_cpos = FUNC1(cpos);
	split_rec.e_leaf_clusters = FUNC0(len);
	split_rec.e_blkno = FUNC2(start_blkno);
	split_rec.e_flags = rec->e_flags;
	if (new_flags)
		split_rec.e_flags |= new_flags;
	if (clear_flags)
		split_rec.e_flags &= ~clear_flags;

	ret = FUNC14(handle, et, left_path,
				 index, &split_rec, meta_ac,
				 dealloc);
	if (ret)
		FUNC5(ret);

out:
	FUNC9(left_path);
	return ret;

}