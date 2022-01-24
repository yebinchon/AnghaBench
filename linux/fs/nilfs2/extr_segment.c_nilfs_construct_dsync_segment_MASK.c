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
struct the_nilfs {scalar_t__ ns_flushed_device; int /*<<< orphan*/  ns_inode_lock; struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_sc_info {void* sc_dsync_end; void* sc_dsync_start; struct nilfs_inode_info* sc_dsync_inode; int /*<<< orphan*/  sc_flags; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; } ;
struct inode {int dummy; } ;
typedef  void* loff_t ;

/* Variables and functions */
 int EROFS ; 
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BUSY ; 
 int /*<<< orphan*/  NILFS_I_INODE_SYNC ; 
 int /*<<< orphan*/  NILFS_I_QUEUED ; 
 int /*<<< orphan*/  NILFS_SC_UNCLOSED ; 
 int /*<<< orphan*/  SC_LSEG_DSYNC ; 
 int /*<<< orphan*/  STRICT_ORDER ; 
 scalar_t__ FUNC1 (struct the_nilfs*) ; 
 int FUNC2 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nilfs_sc_info*) ; 
 scalar_t__ FUNC4 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct super_block *sb, struct inode *inode,
				  loff_t start, loff_t end)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_sc_info *sci = nilfs->ns_writer;
	struct nilfs_inode_info *ii;
	struct nilfs_transaction_info ti;
	int err = 0;

	if (!sci)
		return -EROFS;

	FUNC5(sb, &ti, 0);

	ii = FUNC0(inode);
	if (FUNC9(NILFS_I_INODE_SYNC, &ii->i_state) ||
	    FUNC4(nilfs, STRICT_ORDER) ||
	    FUNC9(NILFS_SC_UNCLOSED, &sci->sc_flags) ||
	    FUNC1(nilfs)) {
		FUNC6(sb);
		err = FUNC3(sci);
		return err;
	}

	FUNC7(&nilfs->ns_inode_lock);
	if (!FUNC9(NILFS_I_QUEUED, &ii->i_state) &&
	    !FUNC9(NILFS_I_BUSY, &ii->i_state)) {
		FUNC8(&nilfs->ns_inode_lock);
		FUNC6(sb);
		return 0;
	}
	FUNC8(&nilfs->ns_inode_lock);
	sci->sc_dsync_inode = ii;
	sci->sc_dsync_start = start;
	sci->sc_dsync_end = end;

	err = FUNC2(sci, SC_LSEG_DSYNC);
	if (!err)
		nilfs->ns_flushed_device = 0;

	FUNC6(sb);
	return err;
}