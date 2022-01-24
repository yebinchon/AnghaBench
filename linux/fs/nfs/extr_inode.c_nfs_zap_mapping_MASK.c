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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct address_space {scalar_t__ nrpages; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_INO_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *inode, struct address_space *mapping)
{
	if (mapping->nrpages != 0) {
		FUNC1(&inode->i_lock);
		FUNC0(inode, NFS_INO_INVALID_DATA);
		FUNC2(&inode->i_lock);
	}
}