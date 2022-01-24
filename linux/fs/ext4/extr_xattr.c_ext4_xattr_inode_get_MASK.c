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
struct mb_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_hash; int /*<<< orphan*/  e_value_inum; } ;

/* Variables and functions */
 struct mb_cache* FUNC0 (struct inode*) ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  EXT4_STATE_LUSTRE_EA_INODE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode**) ; 
 int FUNC5 (struct inode*,void*,size_t) ; 
 int FUNC6 (struct inode*,struct ext4_xattr_entry*,void*,size_t) ; 
 size_t FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mb_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct inode *inode, struct ext4_xattr_entry *entry,
		     void *buffer, size_t size)
{
	struct mb_cache *ea_inode_cache = FUNC0(inode);
	struct inode *ea_inode;
	int err;

	err = FUNC4(inode, FUNC9(entry->e_value_inum),
				    FUNC9(entry->e_hash), &ea_inode);
	if (err) {
		ea_inode = NULL;
		goto out;
	}

	if (FUNC7(ea_inode) != size) {
		FUNC2(ea_inode,
				   "ea_inode file size=%llu entry size=%zu",
				   FUNC7(ea_inode), size);
		err = -EFSCORRUPTED;
		goto out;
	}

	err = FUNC5(ea_inode, buffer, size);
	if (err)
		goto out;

	if (!FUNC1(ea_inode, EXT4_STATE_LUSTRE_EA_INODE)) {
		err = FUNC6(ea_inode, entry, buffer,
						     size);
		if (err) {
			FUNC2(ea_inode,
					   "EA inode hash validation failed");
			goto out;
		}

		if (ea_inode_cache)
			FUNC10(ea_inode_cache, GFP_NOFS,
					FUNC3(ea_inode),
					ea_inode->i_ino, true /* reusable */);
	}
out:
	FUNC8(ea_inode);
	return err;
}