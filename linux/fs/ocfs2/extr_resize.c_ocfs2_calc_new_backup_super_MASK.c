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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct ocfs2_group_desc {scalar_t__ bg_bitmap; int /*<<< orphan*/  bg_blkno; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int OCFS2_MAX_BACKUP_SUPERBLOCKS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned long*) ; 
 scalar_t__ FUNC5 (struct inode*,int) ; 

__attribute__((used)) static u16 FUNC6(struct inode *inode,
				       struct ocfs2_group_desc *gd,
				       u16 cl_cpg,
				       u16 old_bg_clusters,
				       int set)
{
	int i;
	u16 backups = 0;
	u32 cluster, lgd_cluster;
	u64 blkno, gd_blkno, lgd_blkno = FUNC0(gd->bg_blkno);

	for (i = 0; i < OCFS2_MAX_BACKUP_SUPERBLOCKS; i++) {
		blkno = FUNC1(inode->i_sb, i);
		cluster = FUNC2(inode->i_sb, blkno);

		gd_blkno = FUNC5(inode, cluster);
		if (gd_blkno < lgd_blkno)
			continue;
		else if (gd_blkno > lgd_blkno)
			break;

		/* check if already done backup super */
		lgd_cluster = FUNC2(inode->i_sb, lgd_blkno);
		lgd_cluster += old_bg_clusters;
		if (lgd_cluster >= cluster)
			continue;

		if (set)
			FUNC4(cluster % cl_cpg,
				      (unsigned long *)gd->bg_bitmap);
		else
			FUNC3(cluster % cl_cpg,
					(unsigned long *)gd->bg_bitmap);
		backups++;
	}

	return backups;
}