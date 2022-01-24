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
struct super_block {TYPE_1__* s_op; } ;
struct list_head {int dummy; } ;
struct inode {int i_state; int /*<<< orphan*/  i_lock; void* dirtied_time_when; void* dirtied_when; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct bdi_writeback {TYPE_2__* bdi; int /*<<< orphan*/  list_lock; struct list_head b_dirty_time; struct list_head b_dirty; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* dirty_inode ) (struct inode*,int) ;} ;

/* Variables and functions */
 int I_DIRTY ; 
 int I_DIRTY_INODE ; 
 int I_DIRTY_TIME ; 
 int I_FREEING ; 
 int I_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WB_registered ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  block_dump ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct bdi_writeback*,struct list_head*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 void* jiffies ; 
 struct bdi_writeback* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct bdi_writeback*) ; 

void FUNC19(struct inode *inode, int flags)
{
	struct super_block *sb = inode->i_sb;
	int dirtytime;

	FUNC16(inode, flags);

	/*
	 * Don't do this for I_DIRTY_PAGES - that doesn't actually
	 * dirty the inode itself
	 */
	if (flags & (I_DIRTY_INODE | I_DIRTY_TIME)) {
		FUNC15(inode, flags);

		if (sb->s_op->dirty_inode)
			sb->s_op->dirty_inode(inode, flags);

		FUNC13(inode, flags);
	}
	if (flags & I_DIRTY_INODE)
		flags &= ~I_DIRTY_TIME;
	dirtytime = flags & I_DIRTY_TIME;

	/*
	 * Paired with smp_mb() in __writeback_single_inode() for the
	 * following lockless i_state test.  See there for details.
	 */
	FUNC8();

	if (((inode->i_state & flags) == flags) ||
	    (dirtytime && (inode->i_state & I_DIRTY_INODE)))
		return;

	if (FUNC17(block_dump))
		FUNC3(inode);

	FUNC9(&inode->i_lock);
	if (dirtytime && (inode->i_state & I_DIRTY_INODE))
		goto out_unlock_inode;
	if ((inode->i_state & flags) != flags) {
		const int was_dirty = inode->i_state & I_DIRTY;

		FUNC4(inode, NULL);

		if (flags & I_DIRTY_INODE)
			inode->i_state &= ~I_DIRTY_TIME;
		inode->i_state |= flags;

		/*
		 * If the inode is being synced, just update its dirty state.
		 * The unlocker will place the inode on the appropriate
		 * superblock list, based upon its state.
		 */
		if (inode->i_state & I_SYNC)
			goto out_unlock_inode;

		/*
		 * Only add valid (hashed) inodes to the superblock's
		 * dirty list.  Add blockdev inodes as well.
		 */
		if (!FUNC0(inode->i_mode)) {
			if (FUNC6(inode))
				goto out_unlock_inode;
		}
		if (inode->i_state & I_FREEING)
			goto out_unlock_inode;

		/*
		 * If the inode was already on b_dirty/b_io/b_more_io, don't
		 * reposition it (that would break b_dirty time-ordering).
		 */
		if (!was_dirty) {
			struct bdi_writeback *wb;
			struct list_head *dirty_list;
			bool wakeup_bdi = false;

			wb = FUNC7(inode);

			FUNC1(FUNC2(wb->bdi) &&
			     !FUNC12(WB_registered, &wb->state),
			     "bdi-%s not registered\n", wb->bdi->name);

			inode->dirtied_when = jiffies;
			if (dirtytime)
				inode->dirtied_time_when = jiffies;

			if (inode->i_state & I_DIRTY)
				dirty_list = &wb->b_dirty;
			else
				dirty_list = &wb->b_dirty_time;

			wakeup_bdi = FUNC5(inode, wb,
							       dirty_list);

			FUNC10(&wb->list_lock);
			FUNC14(inode);

			/*
			 * If this is the first dirty inode for this bdi,
			 * we have to wake-up the corresponding bdi thread
			 * to make sure background write-back happens
			 * later.
			 */
			if (FUNC2(wb->bdi) && wakeup_bdi)
				FUNC18(wb);
			return;
		}
	}
out_unlock_inode:
	FUNC10(&inode->i_lock);
}