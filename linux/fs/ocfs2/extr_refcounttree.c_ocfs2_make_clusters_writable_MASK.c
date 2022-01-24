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
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_rec {int /*<<< orphan*/  r_refcount; int /*<<< orphan*/  r_clusters; int /*<<< orphan*/  r_cpos; } ;
struct ocfs2_cow_context {scalar_t__ get_clusters; int /*<<< orphan*/ * meta_ac; int /*<<< orphan*/ * data_ac; int /*<<< orphan*/  inode; TYPE_2__* post_refcount; int /*<<< orphan*/  dealloc; int /*<<< orphan*/  ref_root_bh; int /*<<< orphan*/  data_et; scalar_t__ extra_credits; TYPE_1__* ref_tree; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {int (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  para; scalar_t__ credits; } ;
struct TYPE_3__ {struct ocfs2_caching_info rf_ci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct ocfs2_super* FUNC2 (struct super_block*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned int,unsigned int*,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct super_block*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ ocfs2_di_get_clusters ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ocfs2_caching_info*,int /*<<< orphan*/ ,unsigned int,unsigned int,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ; 
 int FUNC16 (struct super_block*,unsigned int,unsigned int,int /*<<< orphan*/ *,struct ocfs2_caching_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct ocfs2_cow_context*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * FUNC18 (struct ocfs2_super*,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC21(struct super_block *sb,
					struct ocfs2_cow_context *context,
					u32 cpos, u32 p_cluster,
					u32 num_clusters, unsigned int e_flags)
{
	int ret, delete, index, credits =  0;
	u32 new_bit, new_len, orig_num_clusters;
	unsigned int set_len;
	struct ocfs2_super *osb = FUNC2(sb);
	handle_t *handle;
	struct buffer_head *ref_leaf_bh = NULL;
	struct ocfs2_caching_info *ref_ci = &context->ref_tree->rf_ci;
	struct ocfs2_refcount_rec rec;

	FUNC20(cpos, p_cluster,
					   num_clusters, e_flags);

	ret = FUNC16(sb, p_cluster, num_clusters,
					     &context->data_et,
					     ref_ci,
					     context->ref_root_bh,
					     &context->meta_ac,
					     &context->data_ac, &credits);
	if (ret) {
		FUNC10(ret);
		return ret;
	}

	if (context->post_refcount)
		credits += context->post_refcount->credits;

	credits += context->extra_credits;
	handle = FUNC18(osb, credits);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC10(ret);
		goto out;
	}

	orig_num_clusters = num_clusters;

	while (num_clusters) {
		ret = FUNC15(ref_ci, context->ref_root_bh,
					     p_cluster, num_clusters,
					     &rec, &index, &ref_leaf_bh);
		if (ret) {
			FUNC10(ret);
			goto out_commit;
		}

		FUNC0(!rec.r_refcount);
		set_len = FUNC9((u64)p_cluster + num_clusters,
			      FUNC8(rec.r_cpos) +
			      FUNC7(rec.r_clusters)) - p_cluster;

		/*
		 * There are many different situation here.
		 * 1. If refcount == 1, remove the flag and don't COW.
		 * 2. If refcount > 1, allocate clusters.
		 *    Here we may not allocate r_len once at a time, so continue
		 *    until we reach num_clusters.
		 */
		if (FUNC7(rec.r_refcount) == 1) {
			delete = 0;
			ret = FUNC11(handle,
						       &context->data_et,
						       cpos, p_cluster,
						       set_len, e_flags,
						       context->meta_ac,
						       &context->dealloc);
			if (ret) {
				FUNC10(ret);
				goto out_commit;
			}
		} else {
			delete = 1;

			ret = FUNC4(handle,
						     context->data_ac,
						     1, set_len,
						     &new_bit, &new_len);
			if (ret) {
				FUNC10(ret);
				goto out_commit;
			}

			ret = FUNC17(handle, context,
						     cpos, p_cluster, new_bit,
						     new_len, e_flags);
			if (ret) {
				FUNC10(ret);
				goto out_commit;
			}
			set_len = new_len;
		}

		ret = FUNC5(handle, ref_ci,
						context->ref_root_bh,
						p_cluster, set_len,
						context->meta_ac,
						&context->dealloc, delete);
		if (ret) {
			FUNC10(ret);
			goto out_commit;
		}

		cpos += set_len;
		p_cluster += set_len;
		num_clusters -= set_len;
		FUNC6(ref_leaf_bh);
		ref_leaf_bh = NULL;
	}

	/* handle any post_cow action. */
	if (context->post_refcount && context->post_refcount->func) {
		ret = context->post_refcount->func(context->inode, handle,
						context->post_refcount->para);
		if (ret) {
			FUNC10(ret);
			goto out_commit;
		}
	}

	/*
	 * Here we should write the new page out first if we are
	 * in write-back mode.
	 */
	if (context->get_clusters == ocfs2_di_get_clusters) {
		ret = FUNC13(sb, context->inode, cpos,
					       orig_num_clusters);
		if (ret)
			FUNC10(ret);
	}

out_commit:
	FUNC12(osb, handle);

out:
	if (context->data_ac) {
		FUNC14(context->data_ac);
		context->data_ac = NULL;
	}
	if (context->meta_ac) {
		FUNC14(context->meta_ac);
		context->meta_ac = NULL;
	}
	FUNC6(ref_leaf_bh);

	return ret;
}