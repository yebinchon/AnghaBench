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
typedef  int /*<<< orphan*/  u16 ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int /*<<< orphan*/  partitionReferenceNum; scalar_t__ logicalBlockNum; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct super_block*,struct kernel_lb_addr*) ; 

__attribute__((used)) static struct dentry *FUNC6(struct super_block *sb, u32 block,
					u16 partref, __u32 generation)
{
	struct inode *inode;
	struct kernel_lb_addr loc;

	if (block == 0)
		return FUNC1(-ESTALE);

	loc.logicalBlockNum = block;
	loc.partitionReferenceNum = partref;
	inode = FUNC5(sb, &loc);

	if (FUNC2(inode))
		return FUNC0(inode);

	if (generation && inode->i_generation != generation) {
		FUNC4(inode);
		return FUNC1(-ESTALE);
	}
	return FUNC3(inode);
}