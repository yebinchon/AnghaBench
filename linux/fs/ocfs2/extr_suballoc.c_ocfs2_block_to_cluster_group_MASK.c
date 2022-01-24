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
struct ocfs2_super {scalar_t__ first_cluster_group_blkno; int /*<<< orphan*/  sb; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct inode *inode,
						u64 data_blkno,
						u64 *bg_blkno,
						u16 *bg_bit_off)
{
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	u32 data_cluster = FUNC2(osb->sb, data_blkno);

	FUNC0(!FUNC3(inode));

	*bg_blkno = FUNC4(inode,
					      data_cluster);

	if (*bg_blkno == osb->first_cluster_group_blkno)
		*bg_bit_off = (u16) data_cluster;
	else
		*bg_bit_off = (u16) FUNC2(osb->sb,
							     data_blkno - *bg_blkno);
}