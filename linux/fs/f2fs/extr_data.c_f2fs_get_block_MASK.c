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
struct inode {int dummy; } ;
struct extent_info {scalar_t__ fofs; scalar_t__ blk; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; struct inode* inode; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*,scalar_t__,struct extent_info*) ; 
 int FUNC1 (struct dnode_of_data*,scalar_t__) ; 

int FUNC2(struct dnode_of_data *dn, pgoff_t index)
{
	struct extent_info ei  = {0,0,0};
	struct inode *inode = dn->inode;

	if (FUNC0(inode, index, &ei)) {
		dn->data_blkaddr = ei.blk + index - ei.fofs;
		return 0;
	}

	return FUNC1(dn, index);
}