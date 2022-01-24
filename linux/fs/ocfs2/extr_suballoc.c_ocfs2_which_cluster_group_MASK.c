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
typedef  int u32 ;
struct ocfs2_super {int bitmap_cpg; int /*<<< orphan*/  first_cluster_group_blkno; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

u64 FUNC4(struct inode *inode, u32 cluster)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	u32 group_no;

	FUNC0(!FUNC3(inode));

	group_no = cluster / osb->bitmap_cpg;
	if (!group_no)
		return osb->first_cluster_group_blkno;
	return FUNC2(inode->i_sb,
					group_no * osb->bitmap_cpg);
}