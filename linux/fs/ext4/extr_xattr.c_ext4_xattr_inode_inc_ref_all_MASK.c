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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_hash; int /*<<< orphan*/  e_value_inum; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 struct ext4_xattr_entry* FUNC0 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC5 (struct inode*,unsigned int,unsigned int,struct inode**) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(handle_t *handle, struct inode *parent,
					struct ext4_xattr_entry *first)
{
	struct inode *ea_inode;
	struct ext4_xattr_entry *entry;
	struct ext4_xattr_entry *failed_entry;
	unsigned int ea_ino;
	int err, saved_err;

	for (entry = first; !FUNC1(entry);
	     entry = FUNC0(entry)) {
		if (!entry->e_value_inum)
			continue;
		ea_ino = FUNC8(entry->e_value_inum);
		err = FUNC5(parent, ea_ino,
					    FUNC8(entry->e_hash),
					    &ea_inode);
		if (err)
			goto cleanup;
		err = FUNC6(handle, ea_inode);
		if (err) {
			FUNC3(ea_inode, "inc ref error %d", err);
			FUNC7(ea_inode);
			goto cleanup;
		}
		FUNC7(ea_inode);
	}
	return 0;

cleanup:
	saved_err = err;
	failed_entry = entry;

	for (entry = first; entry != failed_entry;
	     entry = FUNC0(entry)) {
		if (!entry->e_value_inum)
			continue;
		ea_ino = FUNC8(entry->e_value_inum);
		err = FUNC5(parent, ea_ino,
					    FUNC8(entry->e_hash),
					    &ea_inode);
		if (err) {
			FUNC2(parent->i_sb,
				     "cleanup ea_ino %u iget error %d", ea_ino,
				     err);
			continue;
		}
		err = FUNC4(handle, ea_inode);
		if (err)
			FUNC3(ea_inode, "cleanup dec ref error %d",
					   err);
		FUNC7(ea_inode);
	}
	return saved_err;
}