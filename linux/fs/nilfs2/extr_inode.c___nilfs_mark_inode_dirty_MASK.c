#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {TYPE_1__* i_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifile; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct buffer_head*,int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct inode *inode, int flags)
{
	struct buffer_head *ibh;
	int err;

	err = FUNC3(inode, &ibh);
	if (FUNC7(err)) {
		FUNC5(inode->i_sb, KERN_WARNING,
			  "cannot mark inode dirty (ino=%lu): error %d loading inode block",
			  inode->i_ino, err);
		return err;
	}
	FUNC6(inode, ibh, flags);
	FUNC2(ibh);
	FUNC4(FUNC0(inode)->i_root->ifile);
	FUNC1(ibh);
	return 0;
}