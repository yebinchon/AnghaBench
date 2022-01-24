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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {scalar_t__ e_value_size; int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_value_inum; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int i_extra_isize; int i_inline_off; } ;
struct TYPE_3__ {int s_inode_size; } ;

/* Variables and functions */
 int EXT4_GOOD_OLD_INODE_SIZE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ext4_xattr_entry* FUNC3 (struct ext4_xattr_entry*) ; 
 int EXT4_XATTR_ROUND ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  EXT4_XATTR_SYSTEM_DATA ; 
 struct ext4_xattr_entry* FUNC5 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC6 (struct inode*,struct ext4_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_xattr_entry*) ; 
 struct ext4_inode* FUNC8 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
					   struct ext4_iloc *iloc)
{
	struct ext4_xattr_ibody_header *header;
	struct ext4_xattr_entry *entry;
	struct ext4_inode *raw_inode;
	int free, min_offs;

	min_offs = FUNC1(inode->i_sb)->s_inode_size -
			EXT4_GOOD_OLD_INODE_SIZE -
			FUNC0(inode)->i_extra_isize -
			sizeof(struct ext4_xattr_ibody_header);

	/*
	 * We need to subtract another sizeof(__u32) since an in-inode xattr
	 * needs an empty 4 bytes to indicate the gap between the xattr entry
	 * and the name/value pair.
	 */
	if (!FUNC9(inode, EXT4_STATE_XATTR))
		return FUNC4(min_offs -
			FUNC2(FUNC12(EXT4_XATTR_SYSTEM_DATA)) -
			EXT4_XATTR_ROUND - sizeof(__u32));

	raw_inode = FUNC8(iloc);
	header = FUNC6(inode, raw_inode);
	entry = FUNC5(header);

	/* Compute min_offs. */
	for (; !FUNC7(entry); entry = FUNC3(entry)) {
		if (!entry->e_value_inum && entry->e_value_size) {
			size_t offs = FUNC10(entry->e_value_offs);
			if (offs < min_offs)
				min_offs = offs;
		}
	}
	free = min_offs -
		((void *)entry - (void *)FUNC5(header)) - sizeof(__u32);

	if (FUNC0(inode)->i_inline_off) {
		entry = (struct ext4_xattr_entry *)
			((void *)raw_inode + FUNC0(inode)->i_inline_off);

		free += FUNC4(FUNC11(entry->e_value_size));
		goto out;
	}

	free -= FUNC2(FUNC12(EXT4_XATTR_SYSTEM_DATA));

	if (free > EXT4_XATTR_ROUND)
		free = FUNC4(free - EXT4_XATTR_ROUND);
	else
		free = 0;

out:
	return free;
}