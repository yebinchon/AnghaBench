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
struct inode {int i_state; int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; scalar_t__ i_nlink; TYPE_1__* i_sb; struct address_space* i_mapping; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_data_sem; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_HT_TRUNCATE ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EOFBLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  EXT4_STATE_DA_ALLOC_CLOSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int I_FREEING ; 
 int I_NEW ; 
 int /*<<< orphan*/  NO_AUTO_DA_ALLOC ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct address_space*,int) ; 
 unsigned int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC16 (struct inode*,int*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC18 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct inode*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

int FUNC31(struct inode *inode)
{
	struct ext4_inode_info *ei = FUNC0(inode);
	unsigned int credits;
	int err = 0;
	handle_t *handle;
	struct address_space *mapping = inode->i_mapping;

	/*
	 * There is a possibility that we're either freeing the inode
	 * or it's a completely new inode. In those cases we might not
	 * have i_mutex locked because it's not necessary.
	 */
	if (!(inode->i_state & (I_NEW|I_FREEING)))
		FUNC4(!FUNC26(inode));
	FUNC28(inode);

	if (!FUNC9(inode))
		return 0;

	FUNC10(inode, EXT4_INODE_EOFBLOCKS);

	if (inode->i_size == 0 && !FUNC27(inode->i_sb, NO_AUTO_DA_ALLOC))
		FUNC23(inode, EXT4_STATE_DA_ALLOC_CLOSE);

	if (FUNC14(inode)) {
		int has_inline = 1;

		err = FUNC16(inode, &has_inline);
		if (err)
			return err;
		if (has_inline)
			return 0;
	}

	/* If we zero-out tail of the page, we have to create jinode for jbd2 */
	if (inode->i_size & (inode->i_sb->s_blocksize - 1)) {
		if (FUNC17(inode) < 0)
			return 0;
	}

	if (FUNC24(inode, EXT4_INODE_EXTENTS))
		credits = FUNC25(inode);
	else
		credits = FUNC8(inode);

	handle = FUNC18(inode, EXT4_HT_TRUNCATE, credits);
	if (FUNC1(handle))
		return FUNC3(handle);

	if (inode->i_size & (inode->i_sb->s_blocksize - 1))
		FUNC7(handle, mapping, inode->i_size);

	/*
	 * We add the inode to the orphan list, so that if this
	 * truncate spans multiple transactions, and we crash, we will
	 * resume the truncate when the filesystem recovers.  It also
	 * marks the inode dirty, to catch the new size.
	 *
	 * Implication: the file must always be in a sane, consistent
	 * truncatable state while each transaction commits.
	 */
	err = FUNC21(handle, inode);
	if (err)
		goto out_stop;

	FUNC6(&FUNC0(inode)->i_data_sem);

	FUNC11(inode);

	if (FUNC24(inode, EXT4_INODE_EXTENTS))
		err = FUNC12(handle, inode);
	else
		FUNC15(handle, inode);

	FUNC30(&ei->i_data_sem);
	if (err)
		goto out_stop;

	if (FUNC2(inode))
		FUNC13(handle);

out_stop:
	/*
	 * If this was a simple ftruncate() and the file will remain alive,
	 * then we need to clear up the orphan record which we created above.
	 * However, if this was a real unlink then we were called by
	 * ext4_evict_inode(), and we allow that function to clean up the
	 * orphan info for us.
	 */
	if (inode->i_nlink)
		FUNC22(handle, inode);

	inode->i_mtime = inode->i_ctime = FUNC5(inode);
	FUNC20(handle, inode);
	FUNC19(handle);

	FUNC29(inode);
	return err;
}