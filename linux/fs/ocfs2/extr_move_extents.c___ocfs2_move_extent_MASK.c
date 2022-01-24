#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_path {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  et_root_bh; int /*<<< orphan*/  et_ci; } ;
struct ocfs2_move_extents_context {int /*<<< orphan*/  dealloc; int /*<<< orphan*/  meta_ac; int /*<<< orphan*/  new_phys_cpos; TYPE_1__ et; struct inode* inode; } ;
struct ocfs2_extent_rec {int e_flags; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  replace_rec ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_path*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC18 (TYPE_1__*) ; 
 int FUNC19 (struct ocfs2_extent_list*,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,TYPE_1__*,struct ocfs2_path*,int,struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (struct ocfs2_super*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 
 struct ocfs2_extent_list* FUNC23 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC24(handle_t *handle,
			       struct ocfs2_move_extents_context *context,
			       u32 cpos, u32 len, u32 p_cpos, u32 new_p_cpos,
			       int ext_flags)
{
	int ret = 0, index;
	struct inode *inode = context->inode;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct ocfs2_extent_rec *rec, replace_rec;
	struct ocfs2_path *path = NULL;
	struct ocfs2_extent_list *el;
	u64 ino = FUNC17(context->et.et_ci);
	u64 old_blkno = FUNC9(inode->i_sb, p_cpos);

	ret = FUNC11(handle, inode, cpos,
					       p_cpos, new_p_cpos, len);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	FUNC6(&replace_rec, 0, sizeof(replace_rec));
	replace_rec.e_cpos = FUNC4(cpos);
	replace_rec.e_leaf_clusters = FUNC3(len);
	replace_rec.e_blkno = FUNC5(FUNC9(inode->i_sb,
								   new_p_cpos));

	path = FUNC18(&context->et);
	if (!path) {
		ret = -ENOMEM;
		FUNC7(ret);
		goto out;
	}

	ret = FUNC13(FUNC1(inode), path, cpos);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	el = FUNC23(path);

	index = FUNC19(el, cpos);
	if (index == -1) {
		ret = FUNC12(inode->i_sb,
				  "Inode %llu has an extent at cpos %u which can no longer be found\n",
				  (unsigned long long)ino, cpos);
		goto out;
	}

	rec = &el->l_recs[index];

	FUNC0(ext_flags != rec->e_flags);
	/*
	 * after moving/defraging to new location, the extent is not going
	 * to be refcounted anymore.
	 */
	replace_rec.e_flags = ext_flags & ~OCFS2_EXT_REFCOUNTED;

	ret = FUNC15(handle, FUNC1(inode),
				      context->et.et_root_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	ret = FUNC20(handle, &context->et, path, index,
				 &replace_rec, context->meta_ac,
				 &context->dealloc);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	FUNC16(handle, context->et.et_root_bh);

	context->new_phys_cpos = new_p_cpos;

	/*
	 * need I to append truncate log for old clusters?
	 */
	if (old_blkno) {
		if (ext_flags & OCFS2_EXT_REFCOUNTED)
			ret = FUNC10(inode, handle,
					FUNC8(osb->sb,
								 old_blkno),
					len, context->meta_ac,
					&context->dealloc, 1);
		else
			ret = FUNC21(osb, handle,
							old_blkno, len);
	}

	FUNC22(handle, inode, 0);
out:
	FUNC14(path);
	return ret;
}