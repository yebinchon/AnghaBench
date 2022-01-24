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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {int cache_validity; int /*<<< orphan*/  attr_gencount; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int NFS_INO_INVALID_CHANGE ; 
 int NFS_INO_INVALID_CTIME ; 
 int NFS_INO_INVALID_OTHER ; 
 int NFS_INO_REVAL_FORCED ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	FUNC3(&inode->i_lock);
	/* drop the inode if we're reasonably sure this is the last link */
	if (inode->i_nlink > 0)
		FUNC1(inode);
	FUNC0(inode)->attr_gencount = FUNC2();
	FUNC0(inode)->cache_validity |= NFS_INO_INVALID_CHANGE
		| NFS_INO_INVALID_CTIME
		| NFS_INO_INVALID_OTHER
		| NFS_INO_REVAL_FORCED;
	FUNC4(&inode->i_lock);
}