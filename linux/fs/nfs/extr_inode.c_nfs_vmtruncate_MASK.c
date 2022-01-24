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
struct inode {int /*<<< orphan*/  i_lock; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int cache_validity; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int NFS_INO_DATA_INVAL_DEFER ; 
 int NFS_INO_INVALID_DATA ; 
 int NFS_INO_INVALID_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__) ; 
 int FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct inode * inode, loff_t offset)
{
	int err;

	err = FUNC2(inode, offset);
	if (err)
		goto out;

	FUNC1(inode, offset);
	/* Optimisation */
	if (offset == 0)
		FUNC0(inode)->cache_validity &= ~(NFS_INO_INVALID_DATA |
				NFS_INO_DATA_INVAL_DEFER);
	FUNC0(inode)->cache_validity &= ~NFS_INO_INVALID_SIZE;

	FUNC4(&inode->i_lock);
	FUNC5(inode, offset);
	FUNC3(&inode->i_lock);
out:
	return err;
}