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
struct nilfs_bh_assoc {unsigned long blkoff; struct buffer_head* bh; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct inode*,unsigned long,int,void (*) (struct inode*,struct buffer_head*,void*),struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, unsigned long blkoff,
				  int create,
				  void (*init_block)(struct inode *,
						     struct buffer_head *,
						     void *),
				  struct buffer_head **bhp,
				  struct nilfs_bh_assoc *prev,
				  spinlock_t *lock)
{
	int ret;

	FUNC3(lock);
	if (prev->bh && blkoff == prev->blkoff) {
		FUNC1(prev->bh);
		*bhp = prev->bh;
		FUNC4(lock);
		return 0;
	}
	FUNC4(lock);

	ret = FUNC2(inode, blkoff, create, init_block, bhp);
	if (!ret) {
		FUNC3(lock);
		/*
		 * The following code must be safe for change of the
		 * cache contents during the get block call.
		 */
		FUNC0(prev->bh);
		FUNC1(*bhp);
		prev->bh = *bhp;
		prev->blkoff = blkoff;
		FUNC4(lock);
	}
	return ret;
}