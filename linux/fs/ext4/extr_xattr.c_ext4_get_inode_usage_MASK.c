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
struct ext4_xattr_entry {scalar_t__ e_value_inum; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {struct buffer_head* bh; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ qsize_t ;
struct TYPE_4__ {scalar_t__ i_file_acl; int /*<<< orphan*/  xattr_sem; } ;
struct TYPE_3__ {int s_inode_size; } ;

/* Variables and functions */
 struct ext4_xattr_entry* FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 struct ext4_xattr_entry* FUNC3 (struct ext4_xattr_entry*) ; 
 struct ext4_xattr_entry* FUNC4 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC5 (struct inode*,struct ext4_inode*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_xattr_entry*) ; 
 int FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int FUNC10 (struct inode*,struct ext4_iloc*) ; 
 struct ext4_inode* FUNC11 (struct ext4_iloc*) ; 
 struct buffer_head* FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct inode*,struct ext4_xattr_ibody_header*,void*) ; 

int FUNC17(struct inode *inode, qsize_t *usage)
{
	struct ext4_iloc iloc = { .bh = NULL };
	struct buffer_head *bh = NULL;
	struct ext4_inode *raw_inode;
	struct ext4_xattr_ibody_header *header;
	struct ext4_xattr_entry *entry;
	qsize_t ea_inode_refs = 0;
	void *end;
	int ret;

	FUNC15(&FUNC1(inode)->xattr_sem);

	if (FUNC13(inode, EXT4_STATE_XATTR)) {
		ret = FUNC10(inode, &iloc);
		if (ret)
			goto out;
		raw_inode = FUNC11(&iloc);
		header = FUNC5(inode, raw_inode);
		end = (void *)raw_inode + FUNC2(inode->i_sb)->s_inode_size;
		ret = FUNC16(inode, header, end);
		if (ret)
			goto out;

		for (entry = FUNC4(header); !FUNC7(entry);
		     entry = FUNC3(entry))
			if (entry->e_value_inum)
				ea_inode_refs++;
	}

	if (FUNC1(inode)->i_file_acl) {
		bh = FUNC12(inode->i_sb, FUNC1(inode)->i_file_acl, REQ_PRIO);
		if (FUNC6(bh)) {
			ret = FUNC8(bh);
			bh = NULL;
			goto out;
		}

		ret = FUNC14(inode, bh);
		if (ret)
			goto out;

		for (entry = FUNC0(bh); !FUNC7(entry);
		     entry = FUNC3(entry))
			if (entry->e_value_inum)
				ea_inode_refs++;
	}
	*usage = ea_inode_refs + 1;
	ret = 0;
out:
	FUNC9(iloc.bh);
	FUNC9(bh);
	return ret;
}