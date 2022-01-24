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
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_offs; } ;
struct ext4_inode {scalar_t__ i_block; } ;
struct ext4_iloc {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int i_inline_off; scalar_t__ i_inline_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC4 (struct inode*,struct ext4_inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ext4_inode* FUNC6 (struct ext4_iloc*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct inode *inode, struct ext4_iloc *iloc,
				   void *buffer, loff_t pos, unsigned int len)
{
	struct ext4_xattr_entry *entry;
	struct ext4_xattr_ibody_header *header;
	struct ext4_inode *raw_inode;
	int cp_len = 0;

	if (FUNC9(FUNC5(FUNC2(inode->i_sb))))
		return;

	FUNC0(!FUNC1(inode)->i_inline_off);
	FUNC0(pos + len > FUNC1(inode)->i_inline_size);

	raw_inode = FUNC6(iloc);
	buffer += pos;

	if (pos < EXT4_MIN_INLINE_DATA_SIZE) {
		cp_len = pos + len > EXT4_MIN_INLINE_DATA_SIZE ?
			 EXT4_MIN_INLINE_DATA_SIZE - pos : len;
		FUNC8((void *)raw_inode->i_block + pos, buffer, cp_len);

		len -= cp_len;
		buffer += cp_len;
		pos += cp_len;
	}

	if (!len)
		return;

	pos -= EXT4_MIN_INLINE_DATA_SIZE;
	header = FUNC4(inode, raw_inode);
	entry = (struct ext4_xattr_entry *)((void *)raw_inode +
					    FUNC1(inode)->i_inline_off);

	FUNC8((void *)FUNC3(header) + FUNC7(entry->e_value_offs) + pos,
	       buffer, len);
}