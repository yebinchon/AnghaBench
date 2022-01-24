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
struct nilfs_bh_assoc {unsigned long blkoff; int /*<<< orphan*/ * bh; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, unsigned long blkoff,
				     struct nilfs_bh_assoc *prev,
				     spinlock_t *lock)
{
	FUNC2(lock);
	if (prev->bh && blkoff == prev->blkoff) {
		FUNC0(prev->bh);
		prev->bh = NULL;
	}
	FUNC3(lock);
	return FUNC1(inode, blkoff);
}