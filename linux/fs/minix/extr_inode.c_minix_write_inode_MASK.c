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
struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ MINIX_V1 ; 
 struct buffer_head* FUNC1 (struct inode*) ; 
 struct buffer_head* FUNC2 (struct inode*) ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct writeback_control *wbc)
{
	int err = 0;
	struct buffer_head *bh;

	if (FUNC0(inode) == MINIX_V1)
		bh = FUNC1(inode);
	else
		bh = FUNC2(inode);
	if (!bh)
		return -EIO;
	if (wbc->sync_mode == WB_SYNC_ALL && FUNC4(bh)) {
		FUNC8(bh);
		if (FUNC5(bh) && !FUNC6(bh)) {
			FUNC7("IO error syncing minix inode [%s:%08lx]\n",
				inode->i_sb->s_id, inode->i_ino);
			err = -EIO;
		}
	}
	FUNC3 (bh);
	return err;
}