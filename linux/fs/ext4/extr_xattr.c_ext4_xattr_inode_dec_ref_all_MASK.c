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
struct inode {int dummy; } ;
struct ext4_xattr_inode_array {int dummy; } ;
struct ext4_xattr_entry {scalar_t__ e_value_size; scalar_t__ e_value_inum; scalar_t__ e_hash; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 struct ext4_xattr_entry* FUNC0 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_xattr_entry*) ; 
 int FUNC2 (struct ext4_xattr_inode_array**,struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,int,struct buffer_head*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct inode*,unsigned int) ; 
 int FUNC8 (struct inode*,unsigned int,unsigned int,struct inode**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 unsigned int FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(handle_t *handle, struct inode *parent,
			     struct buffer_head *bh,
			     struct ext4_xattr_entry *first, bool block_csum,
			     struct ext4_xattr_inode_array **ea_inode_array,
			     int extra_credits, bool skip_quota)
{
	struct inode *ea_inode;
	struct ext4_xattr_entry *entry;
	bool dirty = false;
	unsigned int ea_ino;
	int err;
	int credits;

	/* One credit for dec ref on ea_inode, one for orphan list addition, */
	credits = 2 + extra_credits;

	for (entry = first; !FUNC1(entry);
	     entry = FUNC0(entry)) {
		if (!entry->e_value_inum)
			continue;
		ea_ino = FUNC10(entry->e_value_inum);
		err = FUNC8(parent, ea_ino,
					    FUNC10(entry->e_hash),
					    &ea_inode);
		if (err)
			continue;

		err = FUNC2(ea_inode_array, ea_inode);
		if (err) {
			FUNC4(ea_inode,
					   "Expand inode array err=%d", err);
			FUNC9(ea_inode);
			continue;
		}

		err = FUNC5(handle, parent, credits, bh,
						dirty, block_csum);
		if (err) {
			FUNC4(ea_inode, "Ensure credits err=%d",
					   err);
			continue;
		}

		err = FUNC6(handle, ea_inode);
		if (err) {
			FUNC4(ea_inode, "ea_inode dec ref err=%d",
					   err);
			continue;
		}

		if (!skip_quota)
			FUNC7(parent, ea_inode,
					      FUNC10(entry->e_value_size));

		/*
		 * Forget about ea_inode within the same transaction that
		 * decrements the ref count. This avoids duplicate decrements in
		 * case the rest of the work spills over to subsequent
		 * transactions.
		 */
		entry->e_value_inum = 0;
		entry->e_value_size = 0;

		dirty = true;
	}

	if (dirty) {
		/*
		 * Note that we are deliberately skipping csum calculation for
		 * the final update because we do not expect any journal
		 * restarts until xattr block is freed.
		 */

		err = FUNC3(handle, NULL, bh);
		if (err)
			FUNC4(parent,
					   "handle dirty metadata err=%d", err);
	}
}