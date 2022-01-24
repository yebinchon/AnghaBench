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
struct swap_info_struct {int /*<<< orphan*/ * bdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  old_block_size; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/ * s_bdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SWP_BLKDEV ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct swap_info_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct swap_info_struct *p, struct inode *inode)
{
	int error;

	if (FUNC2(inode->i_mode)) {
		p->bdev = FUNC4(FUNC1(inode));
		error = FUNC5(p->bdev,
				   FMODE_READ | FMODE_WRITE | FMODE_EXCL, p);
		if (error < 0) {
			p->bdev = NULL;
			return error;
		}
		p->old_block_size = FUNC6(p->bdev);
		error = FUNC8(p->bdev, PAGE_SIZE);
		if (error < 0)
			return error;
		p->flags |= SWP_BLKDEV;
	} else if (FUNC3(inode->i_mode)) {
		p->bdev = inode->i_sb->s_bdev;
	}

	FUNC7(inode);
	if (FUNC0(inode))
		return -EBUSY;

	return 0;
}