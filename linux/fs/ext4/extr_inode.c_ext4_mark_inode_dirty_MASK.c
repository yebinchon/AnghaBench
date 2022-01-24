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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {scalar_t__ s_want_extra_isize; } ;
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ i_extra_isize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct ext4_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,struct ext4_iloc,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC7(handle_t *handle, struct inode *inode)
{
	struct ext4_iloc iloc;
	struct ext4_sb_info *sbi = FUNC1(inode->i_sb);
	int err;

	FUNC5();
	FUNC6(inode, _RET_IP_);
	err = FUNC3(handle, inode, &iloc);
	if (err)
		return err;

	if (FUNC0(inode)->i_extra_isize < sbi->s_want_extra_isize)
		FUNC4(inode, sbi->s_want_extra_isize,
					       iloc, handle);

	return FUNC2(handle, inode, &iloc);
}