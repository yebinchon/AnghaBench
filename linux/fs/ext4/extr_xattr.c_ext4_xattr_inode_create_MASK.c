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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int /*<<< orphan*/  i_flags; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; scalar_t__ i_ino; TYPE_2__* i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {TYPE_1__* s_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  EXT4_EA_INODE_FL ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int S_IFREG ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  ext4_file_inode_operations ; 
 int /*<<< orphan*/  ext4_file_operations ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC17(handle_t *handle,
					     struct inode *inode, u32 hash)
{
	struct inode *ea_inode = NULL;
	uid_t owner[2] = { FUNC12(inode), FUNC11(inode) };
	int err;

	/*
	 * Let the next inode be the goal, so we try and allocate the EA inode
	 * in the same group, or nearby one.
	 */
	ea_inode = FUNC6(handle, inode->i_sb->s_root->d_inode,
				  S_IFREG | 0600, NULL, inode->i_ino + 1, owner,
				  EXT4_EA_INODE_FL);
	if (!FUNC1(ea_inode)) {
		ea_inode->i_op = &ext4_file_inode_operations;
		ea_inode->i_fop = &ext4_file_operations;
		FUNC7(ea_inode);
		FUNC8(ea_inode);
		FUNC16(ea_inode);
		FUNC10(ea_inode, 1);
		FUNC9(ea_inode, hash);
		err = FUNC5(handle, ea_inode);
		if (!err)
			err = FUNC4(ea_inode);
		if (err) {
			FUNC15(ea_inode);
			return FUNC0(err);
		}

		/*
		 * Xattr inodes are shared therefore quota charging is performed
		 * at a higher level.
		 */
		FUNC3(ea_inode);
		FUNC2(ea_inode);
		FUNC13(ea_inode);
		ea_inode->i_flags |= S_NOQUOTA;
		FUNC14(ea_inode);
	}

	return ea_inode;
}