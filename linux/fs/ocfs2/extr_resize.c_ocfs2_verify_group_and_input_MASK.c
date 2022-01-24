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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct ocfs2_new_group_input {scalar_t__ group; scalar_t__ chain; scalar_t__ clusters; scalar_t__ frees; } ;
struct TYPE_3__ {int /*<<< orphan*/  cl_next_free_rec; int /*<<< orphan*/  cl_cpg; int /*<<< orphan*/  cl_count; } ;
struct TYPE_4__ {TYPE_1__ i_chain; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_clusters; TYPE_2__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct inode*,struct ocfs2_dinode*,struct ocfs2_new_group_input*,struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
					struct ocfs2_dinode *di,
					struct ocfs2_new_group_input *input,
					struct buffer_head *group_bh)
{
	u16 cl_count = FUNC0(di->id2.i_chain.cl_count);
	u16 cl_cpg = FUNC0(di->id2.i_chain.cl_cpg);
	u16 next_free = FUNC0(di->id2.i_chain.cl_next_free_rec);
	u32 cluster = FUNC3(inode->i_sb, input->group);
	u32 total_clusters = FUNC1(di->i_clusters);
	int ret = -EINVAL;

	if (cluster < total_clusters)
		FUNC2(ML_ERROR, "add a group which is in the current volume.\n");
	else if (input->chain >= cl_count)
		FUNC2(ML_ERROR, "input chain exceeds the limit.\n");
	else if (next_free != cl_count && next_free != input->chain)
		FUNC2(ML_ERROR,
		     "the add group should be in chain %u\n", next_free);
	else if (total_clusters + input->clusters < total_clusters)
		FUNC2(ML_ERROR, "add group's clusters overflow.\n");
	else if (input->clusters > cl_cpg)
		FUNC2(ML_ERROR, "the cluster exceeds the maximum of a group\n");
	else if (input->frees > input->clusters)
		FUNC2(ML_ERROR, "the free cluster exceeds the total clusters\n");
	else if (total_clusters % cl_cpg != 0)
		FUNC2(ML_ERROR,
		     "the last group isn't full. Use group extend first.\n");
	else if (input->group != FUNC5(inode, cluster))
		FUNC2(ML_ERROR, "group blkno is invalid\n");
	else if ((ret = FUNC4(inode, di, input, group_bh)))
		FUNC2(ML_ERROR, "group descriptor check failed.\n");
	else
		ret = 0;

	return ret;
}