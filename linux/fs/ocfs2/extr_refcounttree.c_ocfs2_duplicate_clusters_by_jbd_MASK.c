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
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_caching_info {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct ocfs2_caching_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 struct ocfs2_super* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC8 (struct ocfs2_caching_info*,void*,struct buffer_head**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(handle_t *handle,
				    struct inode *inode,
				    u32 cpos, u32 old_cluster,
				    u32 new_cluster, u32 new_len)
{
	int ret = 0;
	struct super_block *sb = inode->i_sb;
	struct ocfs2_caching_info *ci = FUNC0(inode);
	int i, blocks = FUNC5(sb, new_len);
	u64 old_block = FUNC5(sb, old_cluster);
	u64 new_block = FUNC5(sb, new_cluster);
	struct ocfs2_super *osb = FUNC1(sb);
	struct buffer_head *old_bh = NULL;
	struct buffer_head *new_bh = NULL;

	FUNC11(cpos, old_cluster,
					       new_cluster, new_len);

	for (i = 0; i < blocks; i++, old_block++, new_block++) {
		new_bh = FUNC10(osb->sb, new_block);
		if (new_bh == NULL) {
			ret = -ENOMEM;
			FUNC4(ret);
			break;
		}

		FUNC9(ci, new_bh);

		ret = FUNC8(ci, old_block, &old_bh, NULL);
		if (ret) {
			FUNC4(ret);
			break;
		}

		ret = FUNC6(handle, ci, new_bh,
					   OCFS2_JOURNAL_ACCESS_CREATE);
		if (ret) {
			FUNC4(ret);
			break;
		}

		FUNC3(new_bh->b_data, old_bh->b_data, sb->s_blocksize);
		FUNC7(handle, new_bh);

		FUNC2(new_bh);
		FUNC2(old_bh);
		new_bh = NULL;
		old_bh = NULL;
	}

	FUNC2(new_bh);
	FUNC2(old_bh);
	return ret;
}