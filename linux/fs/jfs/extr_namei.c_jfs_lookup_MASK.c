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
typedef  int uint ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  i_sb; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int ENOENT ; 
 struct inode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  JFS_LOOKUP ; 
 struct inode* FUNC2 (struct inode*,struct inode*) ; 
 int FUNC3 (struct inode*,struct component_name*,scalar_t__*,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct component_name*) ; 
 int FUNC5 (struct component_name*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct inode *dip, struct dentry *dentry, unsigned int flags)
{
	struct btstack btstack;
	ino_t inum;
	struct inode *ip;
	struct component_name key;
	int rc;

	FUNC8("jfs_lookup: name = %pd", dentry);

	if ((rc = FUNC5(&key, dentry)))
		return FUNC0(rc);
	rc = FUNC3(dip, &key, &inum, &btstack, JFS_LOOKUP);
	FUNC4(&key);
	if (rc == -ENOENT) {
		ip = NULL;
	} else if (rc) {
		FUNC6("jfs_lookup: dtSearch returned %d", rc);
		ip = FUNC0(rc);
	} else {
		ip = FUNC7(dip->i_sb, inum);
		if (FUNC1(ip))
			FUNC6("jfs_lookup: iget failed on inum %d", (uint)inum);
	}

	return FUNC2(ip, dentry);
}