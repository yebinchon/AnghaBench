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
typedef  scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_cow_context {scalar_t__ cow_start; scalar_t__ cow_len; int (* get_clusters ) (struct ocfs2_cow_context*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ;int /*<<< orphan*/  dealloc; struct inode* inode; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int OCFS2_EXT_REFCOUNTED ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_cow_context*,scalar_t__,scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int) ; 
 int FUNC10 (struct ocfs2_cow_context*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ; 

__attribute__((used)) static int FUNC11(struct ocfs2_cow_context *context)
{
	int ret = 0;
	struct inode *inode = context->inode;
	u32 cow_start = context->cow_start, cow_len = context->cow_len;
	u32 p_cluster, num_clusters;
	unsigned int ext_flags;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);

	if (!FUNC7(osb)) {
		return FUNC4(inode->i_sb, "Inode %lu want to use refcount tree, but the feature bit is not set in the super block\n",
				   inode->i_ino);
	}

	FUNC5(&context->dealloc);

	while (cow_len) {
		ret = context->get_clusters(context, cow_start, &p_cluster,
					    &num_clusters, &ext_flags);
		if (ret) {
			FUNC2(ret);
			break;
		}

		FUNC0(!(ext_flags & OCFS2_EXT_REFCOUNTED));

		if (cow_len < num_clusters)
			num_clusters = cow_len;

		ret = FUNC6(inode->i_sb, context,
						   cow_start, p_cluster,
						   num_clusters, ext_flags);
		if (ret) {
			FUNC2(ret);
			break;
		}

		cow_len -= num_clusters;
		cow_start += num_clusters;
	}

	if (FUNC3(&context->dealloc)) {
		FUNC9(osb, 1);
		FUNC8(osb, &context->dealloc);
	}

	return ret;
}