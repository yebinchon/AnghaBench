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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xattr_sem; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_journal; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,struct buffer_head*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct inode *inode, size_t value_len,
			   bool is_create, int *credits)
{
	struct buffer_head *bh;
	int err;

	*credits = 0;

	if (!FUNC1(inode->i_sb)->s_journal)
		return 0;

	FUNC6(&FUNC0(inode)->xattr_sem);

	bh = FUNC7(inode);
	if (FUNC2(bh)) {
		err = FUNC3(bh);
	} else {
		*credits = FUNC4(inode->i_sb, inode, bh,
						    value_len, is_create);
		FUNC5(bh);
		err = 0;
	}

	FUNC8(&FUNC0(inode)->xattr_sem);
	return err;
}