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
typedef  scalar_t__ u32 ;
struct inode {scalar_t__ i_ino; scalar_t__ i_generation; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int i_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int EXT4_EA_INODE_FL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_IGET_NORMAL ; 
 int /*<<< orphan*/  EXT4_STATE_LUSTRE_EA_INODE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 

__attribute__((used)) static int FUNC14(struct inode *parent, unsigned long ea_ino,
				 u32 ea_inode_hash, struct inode **ea_inode)
{
	struct inode *inode;
	int err;

	inode = FUNC5(parent->i_sb, ea_ino, EXT4_IGET_NORMAL);
	if (FUNC2(inode)) {
		err = FUNC3(inode);
		FUNC4(parent->i_sb,
			   "error while reading EA inode %lu err=%d", ea_ino,
			   err);
		return err;
	}

	if (FUNC13(inode)) {
		FUNC4(parent->i_sb,
			   "error while reading EA inode %lu is_bad_inode",
			   ea_ino);
		err = -EIO;
		goto error;
	}

	if (!(FUNC0(inode)->i_flags & EXT4_EA_INODE_FL)) {
		FUNC4(parent->i_sb,
			   "EA inode %lu does not have EXT4_EA_INODE_FL flag",
			    ea_ino);
		err = -EINVAL;
		goto error;
	}

	FUNC8(inode);

	/*
	 * Check whether this is an old Lustre-style xattr inode. Lustre
	 * implementation does not have hash validation, rather it has a
	 * backpointer from ea_inode to the parent inode.
	 */
	if (ea_inode_hash != FUNC7(inode) &&
	    FUNC1(inode) == parent->i_ino &&
	    inode->i_generation == parent->i_generation) {
		FUNC6(inode, EXT4_STATE_LUSTRE_EA_INODE);
		FUNC9(inode, 1);
	} else {
		FUNC10(inode);
		inode->i_flags |= S_NOQUOTA;
		FUNC11(inode);
	}

	*ea_inode = inode;
	return 0;
error:
	FUNC12(inode);
	return err;
}