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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct ocfs2_super {scalar_t__ first_cluster_group_blkno; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static inline u32 FUNC4(struct inode *inode,
						   u64 bg_blkno,
						   u16 bg_bit_off)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	u32 cluster = 0;

	FUNC0(!FUNC3(inode));

	if (bg_blkno != osb->first_cluster_group_blkno)
		cluster = FUNC2(inode->i_sb, bg_blkno);
	cluster += (u32) bg_bit_off;
	return cluster;
}