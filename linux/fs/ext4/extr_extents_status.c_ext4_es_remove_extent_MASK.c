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
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_es_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct inode *inode, ext4_lblk_t lblk,
			  ext4_lblk_t len)
{
	ext4_lblk_t end;
	int err = 0;
	int reserved = 0;

	FUNC6(inode, lblk, len);
	FUNC3("remove [%u/%u) from extent status tree of inode %lu\n",
		 lblk, len, inode->i_ino);

	if (!len)
		return err;

	end = lblk + len - 1;
	FUNC0(end < lblk);

	/*
	 * ext4_clear_inode() depends on us taking i_es_lock unconditionally
	 * so that we are sure __es_shrink() is done with the inode before it
	 * is reclaimed.
	 */
	FUNC7(&FUNC1(inode)->i_es_lock);
	err = FUNC2(inode, lblk, end, &reserved);
	FUNC8(&FUNC1(inode)->i_es_lock);
	FUNC5(inode);
	FUNC4(inode, reserved);
	return err;
}