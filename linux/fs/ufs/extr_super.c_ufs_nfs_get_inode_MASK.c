#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct ufs_sb_private_info {int s_ncg; int s_ipg; } ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int UFS_ROOTINO ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct super_block*,int) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb, u64 ino, u32 generation)
{
	struct ufs_sb_private_info *uspi = FUNC3(sb)->s_uspi;
	struct inode *inode;

	if (ino < UFS_ROOTINO || ino > uspi->s_ncg * uspi->s_ipg)
		return FUNC1(-ESTALE);

	inode = FUNC5(sb, ino);
	if (FUNC2(inode))
		return FUNC0(inode);
	if (generation && inode->i_generation != generation) {
		FUNC4(inode);
		return FUNC1(-ESTALE);
	}
	return inode;
}