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
struct ext4_xattr_inode_array {int dummy; } ;
struct ext4_xattr_ibody_header {scalar_t__ h_magic; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_size; int /*<<< orphan*/  e_hash; int /*<<< orphan*/  e_value_inum; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int i_file_acl; } ;

/* Variables and functions */
 struct ext4_xattr_entry* FUNC0 (struct buffer_head*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*,int) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int /*<<< orphan*/  EXT4_XATTR_MAGIC ; 
 struct ext4_xattr_entry* FUNC3 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_xattr_entry*) ; 
 int FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct ext4_iloc*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct ext4_iloc*) ; 
 struct buffer_head* FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct inode*,struct buffer_head*) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int,struct ext4_xattr_inode_array**,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode**) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ext4_xattr_inode_array**,int) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

int FUNC26(handle_t *handle, struct inode *inode,
			    struct ext4_xattr_inode_array **ea_inode_array,
			    int extra_credits)
{
	struct buffer_head *bh = NULL;
	struct ext4_xattr_ibody_header *header;
	struct ext4_iloc iloc = { .bh = NULL };
	struct ext4_xattr_entry *entry;
	struct inode *ea_inode;
	int error;

	error = FUNC19(handle, inode, extra_credits,
					  NULL /* bh */,
					  false /* dirty */,
					  false /* block_csum */);
	if (error) {
		FUNC1(inode, "ensure credits (error %d)", error);
		goto cleanup;
	}

	if (FUNC12(inode->i_sb) &&
	    FUNC17(inode, EXT4_STATE_XATTR)) {

		error = FUNC11(inode, &iloc);
		if (error) {
			FUNC1(inode, "inode loc (error %d)", error);
			goto cleanup;
		}

		error = FUNC13(handle, iloc.bh);
		if (error) {
			FUNC1(inode, "write access (error %d)",
					 error);
			goto cleanup;
		}

		header = FUNC5(inode, FUNC15(&iloc));
		if (header->h_magic == FUNC10(EXT4_XATTR_MAGIC))
			FUNC20(handle, inode, iloc.bh,
						     FUNC4(header),
						     false /* block_csum */,
						     ea_inode_array,
						     extra_credits,
						     false /* skip_quota */);
	}

	if (FUNC2(inode)->i_file_acl) {
		bh = FUNC16(inode->i_sb, FUNC2(inode)->i_file_acl, REQ_PRIO);
		if (FUNC6(bh)) {
			error = FUNC8(bh);
			if (error == -EIO)
				FUNC1(inode, "block %llu read error",
						 FUNC2(inode)->i_file_acl);
			bh = NULL;
			goto cleanup;
		}
		error = FUNC18(inode, bh);
		if (error)
			goto cleanup;

		if (FUNC12(inode->i_sb)) {
			for (entry = FUNC0(bh); !FUNC7(entry);
			     entry = FUNC3(entry)) {
				if (!entry->e_value_inum)
					continue;
				error = FUNC22(inode,
					      FUNC25(entry->e_value_inum),
					      FUNC25(entry->e_hash),
					      &ea_inode);
				if (error)
					continue;
				FUNC21(inode, ea_inode,
					      FUNC25(entry->e_value_size));
				FUNC24(ea_inode);
			}

		}

		FUNC23(handle, inode, bh, ea_inode_array,
					 extra_credits);
		/*
		 * Update i_file_acl value in the same transaction that releases
		 * block.
		 */
		FUNC2(inode)->i_file_acl = 0;
		error = FUNC14(handle, inode);
		if (error) {
			FUNC1(inode, "mark inode dirty (error %d)",
					 error);
			goto cleanup;
		}
	}
	error = 0;
cleanup:
	FUNC9(iloc.bh);
	FUNC9(bh);
	return error;
}