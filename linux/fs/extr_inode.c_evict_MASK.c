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
struct super_operations {int /*<<< orphan*/  (* evict_inode ) (struct inode*) ;} ;
struct inode {int i_state; int /*<<< orphan*/  i_lock; scalar_t__ i_cdev; int /*<<< orphan*/  i_mode; scalar_t__ i_bdev; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_io_list; int /*<<< orphan*/  i_lru; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct super_operations* s_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I_CLEAR ; 
 int I_FREEING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __I_NEW ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct inode *inode)
{
	const struct super_operations *op = inode->i_sb->s_op;

	FUNC0(!(inode->i_state & I_FREEING));
	FUNC0(!FUNC10(&inode->i_lru));

	if (!FUNC10(&inode->i_io_list))
		FUNC7(inode);

	FUNC8(inode);

	/*
	 * Wait for flusher thread to be done with the inode so that filesystem
	 * does not start destroying it while writeback is still running. Since
	 * the inode has I_FREEING set, flusher thread won't start new work on
	 * the inode.  We just have to wait for running writeback to finish.
	 */
	FUNC9(inode);

	if (op->evict_inode) {
		op->evict_inode(inode);
	} else {
		FUNC15(&inode->i_data);
		FUNC5(inode);
	}
	if (FUNC1(inode->i_mode) && inode->i_bdev)
		FUNC3(inode);
	if (FUNC2(inode->i_mode) && inode->i_cdev)
		FUNC4(inode);

	FUNC11(inode);

	FUNC12(&inode->i_lock);
	FUNC16(&inode->i_state, __I_NEW);
	FUNC0(inode->i_state != (I_FREEING | I_CLEAR));
	FUNC13(&inode->i_lock);

	FUNC6(inode);
}