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
typedef  unsigned long long u64 ;
typedef  size_t u16 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_super {int /*<<< orphan*/  s_feature_incompat; int /*<<< orphan*/  fs_generation; } ;
struct ocfs2_group_desc {void* bg_bits; void* bg_free_bits_count; scalar_t__ bg_bitmap; void* bg_blkno; void* bg_parent_dinode; int /*<<< orphan*/  bg_next_group; void* bg_chain; void* bg_size; int /*<<< orphan*/  bg_generation; int /*<<< orphan*/  bg_signature; } ;
struct ocfs2_chain_list {void* cl_cpg; TYPE_1__* cl_recs; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {unsigned long long ip_blkno; } ;
struct TYPE_3__ {int /*<<< orphan*/  c_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_GROUP_DESC_SIGNATURE ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 struct ocfs2_super* FUNC2 (struct super_block*) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (unsigned long long) ; 
 unsigned int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_group_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,struct ocfs2_group_desc*,struct ocfs2_chain_list*,unsigned long long,unsigned int) ; 
 unsigned int FUNC10 (struct ocfs2_chain_list*) ; 
 int FUNC11 (struct super_block*,char*,unsigned long long,unsigned long long) ; 
 unsigned int FUNC12 (struct super_block*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(handle_t *handle,
				  struct inode *alloc_inode,
				  struct buffer_head *bg_bh,
				  u64 group_blkno,
				  unsigned int group_clusters,
				  u16 my_chain,
				  struct ocfs2_chain_list *cl)
{
	int status = 0;
	struct ocfs2_super *osb = FUNC2(alloc_inode->i_sb);
	struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) bg_bh->b_data;
	struct super_block * sb = alloc_inode->i_sb;

	if (((unsigned long long) bg_bh->b_blocknr) != group_blkno) {
		status = FUNC11(alloc_inode->i_sb,
				     "group block (%llu) != b_blocknr (%llu)\n",
				     (unsigned long long)group_blkno,
				     (unsigned long long) bg_bh->b_blocknr);
		goto bail;
	}

	status = FUNC13(handle,
					 FUNC0(alloc_inode),
					 bg_bh,
					 OCFS2_JOURNAL_ACCESS_CREATE);
	if (status < 0) {
		FUNC8(status);
		goto bail;
	}

	FUNC7(bg, 0, sb->s_blocksize);
	FUNC16(bg->bg_signature, OCFS2_GROUP_DESC_SIGNATURE);
	bg->bg_generation = FUNC4(osb->fs_generation);
	bg->bg_size = FUNC3(FUNC12(sb, 1,
						osb->s_feature_incompat));
	bg->bg_chain = FUNC3(my_chain);
	bg->bg_next_group = cl->cl_recs[my_chain].c_blkno;
	bg->bg_parent_dinode = FUNC5(FUNC1(alloc_inode)->ip_blkno);
	bg->bg_blkno = FUNC5(group_blkno);
	if (group_clusters == FUNC6(cl->cl_cpg))
		bg->bg_bits = FUNC3(FUNC10(cl));
	else
		FUNC9(osb, bg, cl, group_blkno,
					      group_clusters);

	/* set the 1st bit in the bitmap to account for the descriptor block */
	FUNC15(0, (unsigned long *)bg->bg_bitmap);
	bg->bg_free_bits_count = FUNC3(FUNC6(bg->bg_bits) - 1);

	FUNC14(handle, bg_bh);

	/* There is no need to zero out or otherwise initialize the
	 * other blocks in a group - All valid FS metadata in a block
	 * group stores the superblock fs_generation value at
	 * allocation time. */

bail:
	if (status)
		FUNC8(status);
	return status;
}